local strings = {
	["SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED"] = "Prefer focused Color for repeatable Quests",
	["SI_VOTANS_MAPPIN_COLORS_PREFER_ASSISTED_TOOLTIP"] = "Switch from repeatable color to focused color for selected quests",
	["SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN"] = "Show Player Pin",
	["SI_VOTANS_MAPPIN_COLORS_SHOW_PLAYER_PIN_TOOLTIP"] = "Allow to hide player pin. For those whom want to quest in hardmode.",
	["SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION"] = "Player Pin Vibration",
	["SI_VOTANS_MAPPIN_COLORS_PLAYER_PIN_VIBRATION_TOOLTIP"] = "Let the player pin vibrate shortly to find it on the map.",
}
for id, text in pairs(strings) do ZO_CreateStringId(id, text) end
