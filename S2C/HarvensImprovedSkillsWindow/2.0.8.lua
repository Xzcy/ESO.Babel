local HarvensImprovedSkillsWindow = {}

-- Utility Functions
local function GetMorphAndRank(progressionIndex)
	local _, morph, rank = GetAbilityProgressionInfo(progressionIndex)
	if morph == 0 then
		rank = 0
	end
	return morph, rank
end

local rankLess = {
	SKILL_TYPE_ARMOR = true,
	SKILL_TYPE_CLASS = true,
	SKILL_TYPE_RACIAL = true,
	SKILL_TYPE_TRADESKILL = true,
	SKILL_TYPE_WEAPON = true
}
local maxRanks = {20, 12, 10, 6}

local function FindLineMaxRank(skillType, skillIndex)
	if rankLess[skillType] then
		return 50, GetSkillLineRankXPExtents(skillType, skillIndex, 49)
	else
		for i = 1, #maxRanks do
			local startXP, nextStartXP = GetSkillLineRankXPExtents(skillType, skillIndex, maxRanks[i] - 1)
			if startXP ~= nil and nextStartXP ~= nil then
				return maxRanks[i], startXP, nextStartXP
			end
		end
	end
	return 0
end

local function AddInfo(tooltip, progressionData, skillRank)
	if not tooltip or not progressionData then
		return
	end
	local rank = progressionData:GetCurrentRank()
	local startXP, endXP = progressionData:GetRankXPExtents(rank)
	local currentXP = progressionData:GetCurrentXP()
	local completed = rank and rank >= skillRank and currentXP >= endXP
	if not completed then
		local r, g, b = ZO_WHITE:UnpackRGB()
		tooltip:AddLine(GetString(SI_ABILITYPROGRESSIONRESULT1), "ZoFontWinH5", r, g, b, TOPLEFT, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, SET_TO_FULL_SIZE)
	end
end

local function AddSkillLineInfo(tooltip, progressionIndex, skillMorph, skillRank)
	local skillType, skillLineIndex, skillIndex = GetSkillAbilityIndicesFromProgressionIndex(progressionIndex)
	local skillData = SKILLS_DATA_MANAGER:GetSkillDataByIndices(skillType, skillLineIndex, skillIndex)
	if not skillData then
		return
	end
	local progressionData = skillData:GetProgressionData(skillMorph)
	AddInfo(tooltip, progressionData, skillRank)
end

local function AddSkillLineAbilityInfo(tooltip, abilityId, skillType, skillLineIndex, skillIndex, skillMorph)
	local progressionData = SKILLS_DATA_MANAGER:GetProgressionDataByAbilityId(abilityId)
	AddInfo(tooltip, progressionData, 4)
end

-- Event Handlers
function HarvensImprovedSkillsWindow.AbilityOnMouseEnter(control)
	local ability = control:GetParent()
	local skillProgressionData = ability.slot.skillProgressionData
	local skillData = skillProgressionData:GetSkillData()
	if not skillData:IsPlayerSkill() then
		return
	end

	local skillType, skillLineIndex, skillIndex = skillProgressionData:GetIndices()

	if not skillData:IsCraftedAbility() then
		if not skillData:IsPassive() then
			local progressionIndex = GetProgressionSkillProgressionIndex(skillType, skillLineIndex, skillIndex)
			if progressionIndex and progressionIndex > 0 then
				local morph, rank = GetMorphAndRank(progressionIndex)
				if morph > 0 and rank >= 4 then
					return
				end
				rank = 4
				InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
				HarvensSkillTooltipMorph2:SetProgressionAbility(progressionIndex, 2, rank)
				InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, TOPLEFT)
				HarvensSkillTooltipMorph1:SetProgressionAbility(progressionIndex, 1, rank)
			elseif skillData:IsPassive() then
				local maxRank = skillData:GetNumRanks()
				local rank = skillData:IsPurchased() and skillData:GetCurrentRank() or 0
				rank = rank + 1
				if rank <= maxRank then
					InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
					HarvensSkillTooltipMorph2:SetAbilityId(skillData:GetProgressionData(rank):GetAbilityId())
					if rank < maxRank then
						InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, LEFT)
						HarvensSkillTooltipMorph1:SetAbilityId(skillData:GetProgressionData(maxRank):GetAbilityId())
					end
				end
			else
				InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
				HarvensSkillTooltipMorph2:SetSkillLineAbilityId(skillData:GetProgressionData(2):GetAbilityId(), skillType, skillLineIndex, skillIndex, 2)
				InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, TOPLEFT)
				HarvensSkillTooltipMorph1:SetSkillLineAbilityId(skillData:GetProgressionData(1):GetAbilityId(), skillType, skillLineIndex, skillIndex, 1)
				InitializeTooltip(SkillTooltip, control, TOPLEFT, 5, 5, BOTTOMRIGHT)
				SkillTooltip:SetSkillAbility(skillType, skillLineIndex, skillIndex)
			end
		end
	end
end

function HarvensImprovedSkillsWindow.AbilityOnMouseExit(control)
	ClearTooltip(SkillTooltip)
	ClearTooltip(HarvensSkillTooltipMorph1)
	ClearTooltip(HarvensSkillTooltipMorph2)
end

-- Initialization
function HarvensImprovedSkillsWindow:Initialize()
	local defaults = {showDetails = true, showTotal = false}
	self.sv = ZO_SavedVars:New("HarvensImprovedSkillsWindow_SavedVariables", 1, nil, defaults)

	local function createCheckbox(name, anchor, label, setting)
		local checkbox = WINDOW_MANAGER:CreateControlFromVirtual(SKILLS_WINDOW.control:GetName() .. name, SKILLS_WINDOW.control, "HarvensImprovedSkillsWindowShowDetails")
		checkbox:SetAnchor(unpack(anchor))
		ZO_CheckButton_SetLabelText(checkbox, label)
		checkbox:GetNamedChild("Label"):ClearAnchors()
		checkbox:GetNamedChild("Label"):SetAnchor(RIGHT, checkbox, LEFT, -4, 0, ANCHOR_CONSTRAINS_XY)
		ZO_CheckButton_SetCheckState(checkbox, self.sv[setting])
		ZO_CheckButton_SetToggleFunction(
			checkbox,
			function()
				self.sv[setting] = ZO_CheckButton_IsChecked(checkbox)
				SKILLS_WINDOW:RefreshSkillLineInfo()
				SKILLS_WINDOW:RebuildSkillList()
			end
		)
		return checkbox
	end

	if PP then
		createCheckbox("HarvensShowDetails", {BOTTOMRIGHT, SKILLS_WINDOW.control, TOPRIGHT, -8, -30, ANCHOR_CONSTRAINS_XY}, "Show detailed skills progression", "showDetails")
	else
		createCheckbox("HarvensShowDetails", {BOTTOMRIGHT, SKILLS_WINDOW.control, TOPRIGHT, -8, -70, ANCHOR_CONSTRAINS_XY}, "Show detailed skills progression", "showDetails")
	end
	createCheckbox("HarvensShowTotal", {BOTTOMRIGHT, SKILLS_WINDOW.control:GetNamedChild("HarvensShowDetails"), TOPRIGHT, 0, -8}, "Show total skill line progression", "showTotal")

	SecurePostHook(
		_G,
		"ZO_Skills_AbilitySlot_OnMouseEnter",
		function(control)
			local skillProgressionData = control.skillProgressionData
			local skillData = skillProgressionData:GetSkillData()
			if not skillData:IsPlayerSkill() then
				return
			end

			local skillType, skillLineIndex, skillIndex = skillProgressionData:GetIndices()
			if not skillData:IsCraftedAbility() then
				if not skillData:IsPassive() then
					local progressionIndex = GetProgressionSkillProgressionIndex(skillType, skillLineIndex, skillIndex)
					if progressionIndex and progressionIndex > 0 then
						local morph, rank = GetMorphAndRank(progressionIndex)
						if morph > 0 and rank >= 4 then
							InitializeTooltip(HarvensSkillTooltipMorph1, control, TOPRIGHT, -5, -5, TOPLEFT)
							morph = (morph == 2 and 1 or 2)
							HarvensSkillTooltipMorph1:SetProgressionAbility(progressionIndex, morph, rank)
							return
						end
						rank = 4
						InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
						HarvensSkillTooltipMorph2:SetProgressionAbility(progressionIndex, 2, rank)
						InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, TOPLEFT)
						HarvensSkillTooltipMorph1:SetProgressionAbility(progressionIndex, 1, rank)
						return
					else
						local curLvl, maxLvl = GetSkillAbilityUpgradeInfo(skillType, skillLineIndex, skillIndex)
						if curLvl and maxLvl and curLvl < maxLvl then
							InitializeTooltip(HarvensSkillTooltipMorph1, control, TOPRIGHT, -5, -5, TOPLEFT)
							HarvensSkillTooltipMorph1:SetSkillUpgradeAbility(skillType, skillLineIndex, skillIndex)
						else
							InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
							HarvensSkillTooltipMorph2:SetSkillLineAbilityId(skillData:GetProgressionData(2):GetAbilityId(), skillType, skillLineIndex, skillIndex)
							InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, TOPLEFT)
							HarvensSkillTooltipMorph1:SetSkillLineAbilityId(skillData:GetProgressionData(1):GetAbilityId(), skillType, skillLineIndex, skillIndex)
						end
					end
				else
					local maxRank = skillData:GetNumRanks()
					local rank = skillData:IsPurchased() and skillData:GetCurrentRank() or 0
					rank = rank + 1
					if rank <= maxRank then
						InitializeTooltip(HarvensSkillTooltipMorph2, control, TOPRIGHT, -5, -5, TOPLEFT)
						HarvensSkillTooltipMorph2:SetAbilityId(skillData:GetProgressionData(rank):GetAbilityId())
						if rank < maxRank then
							InitializeTooltip(HarvensSkillTooltipMorph1, HarvensSkillTooltipMorph2, TOPRIGHT, -5, 0, LEFT)
							HarvensSkillTooltipMorph1:SetAbilityId(skillData:GetProgressionData(maxRank):GetAbilityId())
						end
					end
				end
			end
		end
	)

	SecurePostHook(
		_G,
		"ZO_Skills_AbilitySlot_OnMouseExit",
		function()
			ClearTooltip(HarvensSkillTooltipMorph1)
			ClearTooltip(HarvensSkillTooltipMorph2)
		end
	)

	local function createLabel(ctrl)
		ctrl:SetHeight(ctrl:GetHeight() + 5)
		ctrl.label = WINDOW_MANAGER:CreateControlFromVirtual("$(parent)HarvensLabel", ctrl, "HarvensImprovedSkillsWindowLabel")
		ctrl.label:SetAnchor(CENTER, ctrl, CENTER, 0, 3)
	end

	local function createMorph(control, ctrl)
		control.morphLabel = WINDOW_MANAGER:CreateControlFromVirtual("$(parent)HarvensMorphLabel", ctrl, "HarvensImprovedSkillsWindowMorphLabel")
		control.morphLabel:SetAnchor(LEFT, control.nameLabel, RIGHT, 5, 0)
	end

	local function applyInfo(control, skillData)
		local ctrl = control.xpBar:GetControl()
		if not ctrl.label then
			createLabel(ctrl)
		end
		if not control.morphLabel then
			createMorph(control, ctrl)
		end

		local skillPointAllocator = skillData:GetPointAllocator()
		local skillProgressionData = skillPointAllocator:GetProgressionData()

		if not skillData:IsPassive() then
			local hasprog, progId, lastXP, nextXP, currentXP, atMorph = GetAbilityProgressionXPInfoFromAbilityId(skillProgressionData:GetAbilityId())
			local name, morph = GetAbilityProgressionInfo(progId)

			if hasprog and morph > 0 then
				control.morphLabel:SetHidden(false)
				control.morphLabel:SetText(zo_strformat("(<<T:1>>)", name))
			else
				control.morphLabel:SetHidden(true)
			end

			if nextXP > 0 then
				local percent = string.format("%.2f", (currentXP - lastXP) / (nextXP - lastXP) * 100)
				local text = {}
				if HarvensImprovedSkillsWindow.sv.showDetails then
					text[#text + 1] = currentXP - lastXP
					text[#text + 1] = "/"
					text[#text + 1] = nextXP - lastXP
					text[#text + 1] = " ("
				end
				text[#text + 1] = percent
				text[#text + 1] = "%"
				if HarvensImprovedSkillsWindow.sv.showDetails then
					text[#text + 1] = ")"
				end
				ctrl.label:SetText(table.concat(text))
				ctrl.label:SetHidden(false)
				ctrl:SetHandler("OnMouseEnter", HarvensImprovedSkillsWindow.AbilityOnMouseEnter)
				ctrl:SetHandler("OnMouseExit", HarvensImprovedSkillsWindow.AbilityOnMouseExit)
			else
				ctrl.label:SetHidden(true)
				ctrl:SetHandler("OnMouseEnter", HarvensImprovedSkillsWindow.AbilityOnMouseEnter)
				ctrl:SetHandler("OnMouseExit", HarvensImprovedSkillsWindow.AbilityOnMouseExit)
			end
		else
			ctrl.label:SetHidden(true)
			ctrl:SetHandler("OnMouseEnter", nil)
			ctrl:SetHandler("OnMouseExit", nil)
		end

		local a = control.increaseButton
		a:SetHandler("OnMouseEnter", HarvensImprovedSkillsWindow.AbilityOnMouseEnter)
		a:SetHandler("OnMouseExit", HarvensImprovedSkillsWindow.AbilityOnMouseExit)
	end

	SecurePostHook(_G, "ZO_Skills_AbilityEntry_Setup", applyInfo)

	local RefreshSkillInfoOrg = SKILLS_WINDOW.RefreshSkillLineInfo
	SKILLS_WINDOW.RefreshSkillLineInfo = function(self, ...)
		local ctrl = self.skillInfo.xpBar:GetControl()
		if not ctrl.label then
			createLabel(ctrl)
		end

		local skillLineData = self:GetSelectedSkillLineData()
		local skillType = skillLineData:GetSkillTypeData():GetSkillType()
		local skillIndex = skillLineData:GetSkillLineIndex()
		local lastXP, nextXP, currentXP = skillLineData:GetRankXPValues()
		local maxRank, startXP, nextStartXP = FindLineMaxRank(skillType, skillIndex)
		local _, lineRank = GetSkillLineInfo(skillType, skillIndex)
		if nextXP > 0 and nextXP > currentXP then
			local percent = 0
			if HarvensImprovedSkillsWindow.sv.showTotal and maxRank > 0 then
				percent = string.format("%.2f", currentXP / nextStartXP * 100)
			else
				percent = string.format("%.2f", (currentXP - lastXP) / (nextXP - lastXP) * 100)
			end
			local text = {}

			if HarvensImprovedSkillsWindow.sv.showDetails then
				if HarvensImprovedSkillsWindow.sv.showTotal and maxRank > 0 then
					text[#text + 1] = currentXP
					text[#text + 1] = "/"
					text[#text + 1] = nextStartXP
					text[#text + 1] = " ("
				else
					text[#text + 1] = currentXP - lastXP
					text[#text + 1] = "/"
					text[#text + 1] = nextXP - lastXP
					text[#text + 1] = " ("
				end
			end
			text[#text + 1] = percent
			text[#text + 1] = "%"
			if HarvensImprovedSkillsWindow.sv.showDetails then
				text[#text + 1] = ")"
			end
			ctrl.label:SetText(table.concat(text))
			ctrl.label:SetHidden(false)
		else
			ctrl.label:SetHidden(true)
		end
		RefreshSkillInfoOrg(self, ...)
		if nextXP and HarvensImprovedSkillsWindow.sv.showTotal and maxRank > 0 then
			ZO_SkillInfoXPBar_SetValue(self.skillInfo.xpBar, lineRank, 0, nextStartXP, currentXP, false)
			self.skillInfo.xpBar:onLevelChangedCallback(string.format("%i/%i", lineRank, maxRank))
		else
			self.skillInfo.xpBar:onLevelChangedCallback(lineRank)
		end
	end

	ZO_PostHook(HarvensSkillTooltipMorph1, "SetProgressionAbility", AddSkillLineInfo)
	ZO_PostHook(HarvensSkillTooltipMorph2, "SetProgressionAbility", AddSkillLineInfo)
	ZO_PostHook(HarvensSkillTooltipMorph1, "SetSkillLineAbilityId", AddSkillLineAbilityInfo)
	ZO_PostHook(HarvensSkillTooltipMorph2, "SetSkillLineAbilityId", AddSkillLineAbilityInfo)
end

local function OnAddonLoaded(eventCode, addonName)
	if addonName ~= "HarvensImprovedSkillsWindow" then
		return
	end
	EVENT_MANAGER:UnregisterForEvent("HarvensImprovedSkillsWindowInitialize", EVENT_ADD_ON_LOADED)
	HarvensImprovedSkillsWindow:Initialize()
end

EVENT_MANAGER:RegisterForEvent("HarvensImprovedSkillsWindowInitialize", EVENT_ADD_ON_LOADED, OnAddonLoaded)
