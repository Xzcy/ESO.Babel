local BB = MABabel
--[[ 
BB.AddonList[""] = function() if not  then return false end
return true end

do if not BB.SV.BanList[""] then
end end
BB.AddonList[""] = function() if not  then return false end
return true end
]]

BB.AddonList["EssentialHousingTools"] = function() if not EHTUndone then return false end
--String Match and Replace
  local cL, dL, tL, pL, fL = {}, {}, {}, {}, {}
--Control Texts
  cL["|cffffff".."Hi! You seem to have a new installation of Essential Housing Tools. That's great! :) Just to confirm though..."] = "你好！看上去你刚安装了 Essential Housing Tools 插件，请确认以下信息..."
  cL["Move Forward"] = ""
  cL["Move North"] = ""
  cL["Move Backward"] = ""
  cL["Move South"] = ""
  cL["Move Left"] = ""
  cL["Move West"] = ""
  cL["Move Right"] = ""
  cL["Move East"] = ""
  cL["Move Up"] = ""
  cL["Move Down"] = ""
  cL["Rotate Clockwise"] = ""
  cL["Rotate Counterclockwise"] = ""
  cL["No items are close enough to snap to."] = ""
  cL["Your effects have been replaced with the published version\n".."You may undo this change with |c00ffffEHT button |cffffff|||c00ffff Undo"] = ""
  cL["A process is already running"] = ""
  cL["You are not in your home"] = ""
  cL["Link pasted to chat"] = ""
  cL["Clipboard is empty."] = ""
  cL["No history."] = ""
  cL["Character Spacing"] = ""
  cL["meters"] = ""
  --cL["degrees"] = ""
  cL["items"] = ""
  cL["Line Spacing"] = ""
  cL["Radius"] = ""
  cL["Radius (X)"] = ""
  cL["Radius (Y)"] = ""
  cL["Radius (Z)"] = ""
  cL["Radius (Start)"] = ""
  cL["Radius (End)"] = ""
  cL["Arc Length"] = ""
  cL["Circumference"] = ""
  cL["Length"] = ""
  cL["Width"] = ""
  cL["Height"] = ""
  cL["Item Orientation"] = ""
  cL["Item Pitch"] = ""
  cL["Item Yaw"] = ""
  cL["Item Roll"] = ""
  cL["Item Spacing"] = ""
  cL["Item Dimensions"] = ""
  cL["Item Length"] = ""
  cL["Item Width"] = ""
  cL["Item Height"] = ""
  cL["Overall Orientation"] = ""
  cL["Pitch"] = ""
  cL["Yaw"] = ""
  cL["Roll"] = ""
  cL["Overall Position"] = ""
  cL["Fwd"] = ""
  cL["Back"] = ""
  cL["Left"] = ""
  cL["Right"] = ""
  cL["North"] = ""
  cL["South"] = ""
  cL["West"] = ""
  cL["East"] = ""
  cL["Up"] = ""
  cL["Down"] = ""
  cL["Turn"] = ""
  cL["Changes"] = ""
  cL["small"] = ""
  cL["large"] = ""
  cL["Load a saved selection"] = ""
  cL["Revert to Last Save"] = ""
  cL["Clear/New Selection"] = ""
  cL["Delete"] = ""
  cL["Save"] = ""
  cL["Selection name"] = ""
  cL["Selection mode"] = ""
  cL["Copy/Paste"] = ""
  cL["Lock/Unlock"] = ""
  cL["|cffffffSwitch to |c00ffffSelected Items Only|cffffff View to reorder items with drag-and-drop."] = ""
  cL["Drag-and-drop is disabled."] = ""
  cL["Cut & Copy Selection"] = ""
  cL["Copy Selection"] = ""
  cL["Copy Saved Selection"] = ""
  cL["Paste from Selection"] = ""
  cL["Paste from House Items"] = ""
  cL["Paste from Inventory"] = ""
  cL["Export"] = ""
  cL["Import"] = ""
  cL["Clear"] = ""
  cL["New"] = ""
  cL["Load"] = ""
  cL["Save"] = ""
  cL["Stop"] = ""
  cL["<< Rew"] = ""
  cL["Play >>"] = ""
  cL["|cff3333Record|r"] = ""
  cL["Frame"] = ""
  cL["Save Frame"] = ""
  cL["< Insert"] = ""
  cL["Insert >"] = ""
  cL["Frame duration"] = ""
  cL["sec"] = ""
  cL["Update Remaining Frames"] = ""
  cL["Load a saved Scene: "] = ""
  cL["Save as Existing Scene: "] = ""
  cL["Overwrite Saved Scene"] = ""
  cL["Save as New Scene: "] = ""
  cL["Save Scene As"] = ""
  cL["Merge with Scene: "] = ""
  cL["Merge as New Scene: "] = ""
  cL["Loop frames if necessary to match Scene lengths"] = ""
  cL["Merge Scenes"] = ""
  cL["Scene to append at the end: "] = ""
  cL["Save as New Scene: "] = ""
  cL["Append Scenes"] = ""
  --?:SetText(Text)                         --14765，6297, 6418
  --EHT.UI.ShowWarning(Text)
  --EHT.UI.DisplayNotification(Text)      --5234
  --EHT.UI.AddBufferText(1, 2, 3, Text)
  --EHT.UI.CreateHeading(1, 2, Text)
  --EHT.UI.CreateButton(1, 2, Text)
  --EHT.UI.CreateTabButton(1, 2, Text)
  --EHT.UI.CreateSlider(1, Text, Text)

--Dialog Texts
  dL["Do you want to publish this home's effects to the Community, allowing all Community members to see this home's effects (as these effects exist right now) when visiting this home?"] = ""
  dL["|cffffffYour home |c00ff00will|cffffff also be registered as an Open House.\n\n".."|c00ffffReload UI now to publish your changes immediately?"] = ""
  dL["|cffffffYour home |cff0000will not|cffffff be registered as an Open House.\n\n".."|c00ffffReload UI now to publish your changes immediately?"] = ""
  dL["|c00ffffReload UI now to publish your changes immediately?"] = ""
  dL["Do you want to unpublish this home's effects from the Community?\n\n".."Note that Community members will no longer be able to see your effects unless you share them using another method, such as Chat, Mail or Guild."] = ""
  dL["|cffffff".."Your FX data will be unpublished once you reload the UI or log out.\n\n".."|c00ffff".."Reload UI now to unpublish your changes immediately?"] = ""
  dL["You have not published a copy of this home's effects to the Community."] = ""
  dL["Invalid effects data."] = ""
  dL["Cannot preview effects while in secure render mode."] = ""
  dL["You must be in a house."] = ""
  dL["You must be the homeowner."] = ""
  dL["Cannot preview published effects:\n".."Invalid effects data."] = ""
  dL["Cannot preview published effects:\n".."Cannot preview effects while in secure render mode."] = ""
  dL["Cannot preview published effects:\n".."You must be in a house."] = ""
  dL["Cannot preview published effects:\n".."You must be the homeowner."] = ""
  dL["Cannot preview published effects:\n".."Unknown error"] = ""
  dL["Failed to cancel effects preview."] = ""
  dL["Effects preview ended"] = ""
  dL["Failed to accept preview effects."] = ""
  dL["Copy to Clipboard"] = ""
  dL["Cut to Clipboard"] = ""
  dL["The virtual clipboard is empty.\nYou must copy a selection of items to the virtual clipboard first."] = ""
  dL["Paste to your current location or to the original location from which these items were copied?"] = ""
  dL["Current Location"] = ""
  dL["Original Location"] = ""
  dL["Cloning a Scene will replace your current Scene.\n".."You should save any changes to the current Scene first.\n\n".."Continue with cloning a Scene?"] = ""
  dL["Replace current selection with this Scene's furniture?"] = ""
  dL["Scene is empty."] = ""
  dL["Reverse the order of this Scene's Frames?"] = ""
  dL["Add selected items to this Scene?"] = ""
  dL["Remove selected items from this Scene?\n\nThis change cannot be undone.\nIt is recommended that you save a copy of this Scene first."] = ""
  dL["|cff0000We apologize for the inconvenience.|r\n\n" ..
     "A recent Essential Housing Tools update may have caused your Community app to stop working.\n\n" ..
     "If you had installed the Community app and find that you can no longer sign Guest Journals, list Open Houses or Publish FX, " ..
     "please update to the latest version of Essential Housing Tools and simply re-run the Community app installation."] = ""
  dL["Would you like to view the brief Community App Setup Guide video now?"] = ""
  dL["Measure the selected items again and adjust the Item Dimensions?"] = ""
  dL["Reset all build parameters?"] = ""
  dL["Begin randomization of different parameters?\n\nNote: Click this button again to stop the process at any time."] = ""
  dL["Center the build at this location?"] = ""
  dL["The initial Radius of the shape, measured in meters.\n\nExample: You may create a cone-shaped Spiral using a larger Start Radius (ex: 5.0m) and a smaller End Radius (ex: 1.0m)."] = ""
  dL["Choose a selection to restore."] = ""
  dL["Start a new selection?\n\nPlease save your current selection first if you wish to keep any changes."] = ""
  dL["Choose a Saved Selection to delete."] = ""
  dL["Select " .. "all items |cccffffexcept|r effects" .. " in this house?"] = ""
  dL["Select " .. "all items |cccffffexcept|r crafting stations" .. " in this house?"] = ""
  dL["Select " .. "all |cffffffitems and effects|r" .. " in this house?"] = ""
  dL["Select all |cffffffeffects|r in the house?"] = ""
  dL["Find the items in your current selection that match the items on the clipboard and then rearrange those items to match the clipboard's layout?"] = ""
  dL["Find the items in your house that match the items on the clipboard and then rearrange those items to match the clipboard's layout?\n\n".."Note: The items nearest to you will be matched first whenever possible."] = ""
  dL["Empty the virtual Clipboard?"] = ""
  dL["Abandon current Scene and replace with the currently selected furniture?"] = ""
  dL["To create a new Scene, first select one or more furniture items."] = ""
  dL["Recording will insert new frames after the current frame.\n\nBegin recording now?"] = ""
  dL["Frames must be added to a Scene first."] = ""
  dL["Select a Saved Scene to load."] = ""
  dL["Select a saved scene to delete."] = ""
  dL["Loading a Scene restores all of the Scene's furniture to their positions in the first Frame."] = ""
  dL["Select a Saved Scene to overwrite."] = ""
  dL["Enter a Scene Name."] = ""
  dL["Select a Scene to merge with."] = ""
  dL["Merge complete."] = ""
  dL["Select a Scene to Append onto the end of the current Scene."] = ""
  dL["Enter a Scene Name."] = ""
  dL["Append complete."] = ""
  --EHT.UI.ShowAlertDialog(1, Text) ← EHT.UI.ShowErrorDialog  8457, 8545
  --EHT.UI.ShowConfirmationDialog(1, Text)    8117, 8244, 8317, 8354, 8468, 8556
  --Show Custom Dialog(Text, Text, 3, Text)

--Tooltip Texts
  tL["The template defines the general shape that is constructed."]  = ""
  tL["Save your Build parameters or load a previously saved Build."] = ""
  tL["Measure your selected items for more accurate construction."] = ""
  tL["Reset your Build parameters and measure your selected items for more accurate construction."] = ""
  tL["Begin construction using your selected items and the parameters configured below."] = ""
  tL["When enabled, construction begins automatically whenever you change the Build's parameters.\n\nWhen disabled, click the |caaaaffBuild|r button to manually begin construction."] = ""
  tL["Randomizes parameters of this build, slowly evolving the shape.\n\nOnce started, click this button again to stop the process at any time."] = ""
  tL["Center the build at your current location.\n\nUse this when you do not know where your build is currently located."] = ""
  tL["Arrange your selected items using a variety of options."] = ""
  tL["|cffffaaOverall Dimensions|r allow you to customize options that are specific to the Shape template that you selected above."] = ""
  tL["The number of Items used in construction.\n\n" ..
		"Enter a number |caaffffless than|r the number of items in your selection to construct with fewer items.\n\n" ..
		"Enter a number |caaffffgreater than|r the number of items in your selection to simulate motion.\n\n" ..
		"|ce0e0e0* This is particularly useful while you are recording an animation.|r"] = ""
  tL["The message to construct from the items in your selection.\n\nMessage length limit will vary by the number of items in your selection as well as the specific letters, digits and punctuation used."] = ""
  tL["The distance between each letter, measured in meters."] = ""
  tL["The distance between each line for multi-line messages, measured in meters."] = ""
  tL["The Radius of the shape, measured in meters."] = ""
  tL["The X-axis Radius of the shape, measured in meters."] = ""
  tL["The Y-axis Radius of the shape, measured in meters."] = ""
  tL["The Z-axis Radius of the shape, measured in meters."] = ""
  tL["The final Radius of the shape, measured in meters.\n\nExample: You may create a cone-shaped Spiral using a larger Start Radius (ex: 5.0m) and a smaller End Radius (ex: 1.0m)."] = ""
  tL["The measure of the shape's circumference in degrees.\n\nExample: A full circle uses an Arc Length of 360 degrees.\nExample: A half circle uses an Arc Length of 180 degrees."] = ""
  tL["The number of items placed around the Circumference of the shape.\n\nNote:\nFor shapes that use a Start Radius and End Radius, the Circumference is the number of items placed at the Start Radius.\nIn this case, the number of items placed would increase or decrease automatically as the shape approached the End Radius."] = ""
  tL["The number of items placed along the Length of the shape."] = ""
  tL["The number of items placed along the Width of the shape."] = ""
  tL["The number of items placed along the Height of the shape."] = ""
  tL["|cffffaaItem Orientation|r allows you to control the orientation of the individual items.\n\nFor example, you can rotate the individual items by adjusting the |caaffffItem Yaw|r."] = ""
  tL["The initial Pitch of the first item in the shape, measured in degrees. Adjusting this will typically pitch the item forward or backward."] = ""
  tL["The initial Yaw of the first item in the shape, measured in degrees. Adjusting this will typically rotate the item left or right."] = ""
  tL["The initial Roll of the first item in the shape, measured in degrees. Adjusting this will typically roll the item on its left or right side."] = ""
  tL["|cffffaaItem Spacing|r allows you to control the space between each individual item."] = ""
  tL["The space between items along the Length, measured in meters."] = ""
  tL["The space between items along the Width, measured in meters."] = ""
  tL["The space between items along the Height, measured in meters."] = ""
  tL["|cffffaaItem Dimensions|r specify the length, width and height of one individual item.\n\nThis is set automatically whenever you click |caaffffReset|r; you can also automatically measure your selected item(s) by clicking |caaffffMeasure|r."] = ""
  tL["|cffffaaItem Dimensions|r specify the length, width and height of one individual item.\n\nThis is set automatically whenever you click |caaffffReset|r; you can also automatically measure your selected item(s) by clicking |caaffffMeasure|r."] = ""
  tL["The Length of a single item, measured in meters.\nAdjusting this value can increase or decrease the space between individual items.\n\nNote: The Length is auto-populated with the measured length of the first item in your selection."] = ""
  tL["The Width of a single item, measured in meters.\nAdjusting this value can increase or decrease the space between individual items.\n\nNote: The Width is auto-populated with the measured width of the first item in your selection."] = ""
  tL["The Height of a single item, measured in meters.\nAdjusting this value can increase or decrease the space between individual items.\n\nNote: The Height is auto-populated with the measured height of the first item in your selection."] = ""
  tL["|cffffaaOverall Orientation|r allows you to control the orientation of the entire shape that you are building.\n\nFor example, if you are building a Floor, you can rotate the entire floor by adjusting the |caaffffYaw|r.\n\nNote: While you are in the |caaffffBuilds|r tab, you may use the Directional Pads at the bottom to adjust the orientation of your shape."] = ""
  tL["The overall Pitch of the shape, measured in degrees. Adjusting this will typically pitch the entire shape forwards or backwards."] = ""
  tL["The overall Yaw of the shape, measured in degrees. Adjusting this will typically rotate the entire shape left or right."] = ""
  tL["The overall Roll of the shape, measured in degrees. Adjusting this will typically roll the entire shape on its left or right side."] = ""
  tL["|cffffaaOverall Position|r allows you to change the position of the entire shape that you are building.\n\nFor example, if you are building a Wall, you can use the |cffffaaOverall Position|r options to relocate the wall.\n\nNote: While you are in the |caaffffBuilds|r tab, you may use the Directional Pads at the bottom to adjust the position of your shape."] = ""
  tL["The X-axis Position of the overall shape, measured in meters. Adjusting this will move the entire shape east or west."] = ""
  tL["The Y-axis Position of the overall shape, measured in meters. Adjusting this will move the entire shape up or down."] = ""
  tL["The Z-axis Position of the overall shape, measured in meters. Adjusting this will move the entire shape north or south."] = ""
  tL["|cffffffMove selected items using\n|c88ffffForward / Backward / Left / Right|r"] = ""
  tL["|cffffffMove selected items using\n|c88ffffNorth / South / East / West|r"] = ""
  tL["|cffffffManually move any selected item to\n|c88ffffmove all selected items as a group"] = ""
  tL["|cffffffManually move any selected item to\n|c88ffffadjust that individual item"] = ""
  tL["|cffffffEnable |c88ffffCustom Move and Rotate Precision|cffffff\n\nTo change these custom values go to\n|c88ffffSettings > Addons > Essential Housing Tools"] = ""
  tL["Restores a saved selection's items to their last saved positions."] = ""
  tL["Select a saved selection to edit or delete, or click \"New\" to create a new selection."] = ""
  tL["Create a new selection."] = ""
  tL["Deletes the current selection."] = ""
  tL["Save your current selection or load a previously saved selection."] = ""
  tL["A brief description of this selection."] = ""
  tL["When you target and Group Select an item, the Select Mode controls if and how other nearby items are also automatically selected.".."\n\n"..EHT.CONST.COLORS.HIGHLIGHT.."Radius"..EHT.CONST.COLORS.NORMAL.." includes any items near the targeted item.\n"..EHT.CONST.COLORS.HIGHLIGHT.."Connected"..EHT.CONST.COLORS.NORMAL.." includes any items directly or indirectly touching the targeted item.\n"..EHT.CONST.COLORS.HIGHLIGHT.."Same As Target"..EHT.CONST.COLORS.NORMAL.." selects only the exact same items as the targeted item."] = ""
  tL["Align, center, flip, level, reorder, stack, copy/paste/remove, or toggle on/off your selected items."] = ""
  tL["Copy/Cut the selected items, Paste copied items and Import/Export copied items."] = ""
  tL["Lock/Unlock the selected items to prevent you from moving them.\n\nNote: Locked items are only locked for yourself - other decorators can still edit locked items."] = ""
  tL["Choose whether to see all placed items or only those which you have selected, as well as how to sort the list."] = ""
  tL["These are the items that you have selected.\n\nLeft-click an item to show a pointer to it.\nRight-click an item to unselect it."] = ""
  tL["Copies all selected items to the clipboard and removes the items from your home, placing them back into your inventory."] = ""
  tL["Copies all selected items to the clipboard."] = ""
  tL["Copies all items from a Saved Selection to the clipboard."] = ""
  tL["Rerranges the matching items that are in your current selection using the layout stored in the clipboard."] = ""
  tL["Rerranges the matching items that are already placed in your home using the layout stored in the clipboard."] = ""
  tL["Pastes the clipboard items into your home using items from your inventory, bank and home storage containers."] = ""
  tL["Export this clipboard to text."] = ""
  tL["Import a clipboard from text."] = ""
  tL["Clears the items from your clipboard."] = ""
  tL["These are the items in your virtual clipboard.\n\nRight-click an item to remove it from the clipboard."] = ""
  tL["Create a new Scene using the items in your current Selection."] = ""
  tL["Load a previously saved Scene from this house."] = ""
  tL["Save the current Scene into this house."] = ""
  tL["When ON, items will be moved to their saved positions for the current Frame.\n\nWhen OFF, items will NOT be moved to their saved positions.\n\nNOTE: You may use this feature to copy Frames. To do so, check Preview while on the Frame that you wish to copy. Next, uncheck Preview and move to the Frame that you want to copy it into. Finally, click Save Frame."] = ""
  tL["Loop this scene any time it is played."] = ""
  tL["Begin recording all changes made to this scene's furniture.\nA new frame will be created for each change made."] = ""
  tL["Save changes made to this frame."] = ""
  tL["Delete this frame."] = ""
  tL["Insert a new frame before this frame."] = ""
  tL["Insert a new frame after this frame."] = ""
  tL["Update the duration of all frames that follow to match this frame's duration."] = ""
  tL["Select a sound effect for this frame during playback.\n\n".."Please note the following:\n\n".. "Verify that your \"Settings > Audio > Interface Volume\" is sufficiently loud enough to hear these sounds.\n\n".."Other players that are in your Group and in your House, and that have Essential Housing Tools installed can also hear these sound effects as this Scene is playing."] = ""
  tL["Arrange and edit your Scene with a variety of tools."] = ""
  tL["When enabled while merging two Scenes of different run times, the Frames from the shorter run time Scene will be repeated as necessary to match the run time of the longer duration Scene."] = ""
  --EHT.UI.ShowTooltip
  --EHT.UI.ShowControlTooltip
  --EHT.UI.SetInfoTooltip
  
--Prompt Texts
  pL["Select an item"] = ""
  pL["Select 2nd item"] = ""
  pL["Select 1st item"] = ""
  --EHT.UI.ChooseAnItem(1, 2, 3, 4, Text)
  --EHT.UI.ShowInteractionPrompt(1, Text)

--Format Texts
  fL["|cffffffWould you also like to also register your \"|c00ffff%s|cffffff\" as an |c88ffffOpen House for the Community|cffffff?"] = "|cffffffWould you also like to also register your \"|c00ffff%s|cffffff\" as an |c88ffffOpen House for the Community|cffffff?"
  fL["|cffffff" .. "You are currently previewing the version of your effects that was last shared or published " .. "|cffff00%s|cffffff.\n\n" .. "While previewing, you may optionally choose to replace your effects with this published version of your effects.\n\n" .. "Note that if you choose to replace your effects, you may undo those changes with " .. "|c00ffffEHT button |cffffff|||c00ffff Undo|cffffff"] = "|cffffff" .. "You are currently previewing the version of your effects that was last shared or published " .. "|cffff00%s|cffffff.\n\n" .. "While previewing, you may optionally choose to replace your effects with this published version of your effects.\n\n" .. "Note that if you choose to replace your effects, you may undo those changes with " .. "|c00ffffEHT button |cffffff|||c00ffff Undo|cffffff"
  fL["Some time"] = "Some time"
  fL["Cannot preview published effects:\n%s"] = "Cannot preview published effects:\n%s"
  fL["Unknown error"] = "Unknown error"
  fL["Previewing your effects published to Community %s"] = "Previewing your effects published to Community %s"
  fL["Dismissing %s..."] = "Dismissing %s..."
  fL["Summoning %s..."] = "Summoning %s..."
  fL["Copy the %d selected item(s) to the virtual clipboard?"] = "Copy the %d selected item(s) to the virtual clipboard?"
  fL["Cut the %d selected item(s), removing those items to your inventory?"] = "Cut the %d selected item(s), removing those items to your inventory?"
  fL["Copy the %d selected item(s) to the virtual clipboard and remove all selected items to your inventory?"] = "Copy the %d selected item(s) to the virtual clipboard and remove all selected items to your inventory?"
  fL["%d separate groups"] = "%d separate groups"
  fL["Stack all selected items into %s?"] = "Stack all selected items into %s?"
  fL["Deselect all %s numbered items?"] = "Deselect all %s numbered items?"
  fL["%s\n\nThis item is |caa99ffselected|cffffff\n|c00ffffLeft-click|cffffff to deselect\n|c00ffffRight-click|cffffff to identify\n\n%s\n\n\n\n%s\n\n|c000000_"] = "%s\n\nThis item is |caa99ffselected|cffffff\n|c00ffffLeft-click|cffffff to deselect\n|c00ffffRight-click|cffffff to identify\n\n%s\n\n\n\n%s\n\n|c000000_"
  fL["%s\n\nThis item is |cffff00not selected|cffffff\n|c00ffffLeft-click|cffffff to select\n|c00ffffRight-click|cffffff to identify\n\n%s\n\n\n\n%s\n\n|c000000_"] = "%s\n\nThis item is |cffff00not selected|cffffff\n|c00ffffLeft-click|cffffff to select\n|c00ffffRight-click|cffffff to identify\n\n%s\n\n\n\n%s\n\n|c000000_"
  fL["%d |cffffffof |c00ffff%d |cffffffselected"] = "%d |cffffffof |c00ffff%d |cffffffselected"
  fL["%d |cffffffselected"] = "%d |cffffffselected"
  fL["%d item%s missing."] = "%d item%s missing."
  fL["|cffffffMove selected items using\n|c88ffff%s|r"] = "|cffffffMove selected items using\n|c88ffff%s|r"
  fL["|cffffffManually move any selected item to\n|c88ffff%s"] = "|cffffffManually move any selected item to\n|c88ffff%s"
  fL["move all selected items as a group"] = "move all selected items as a group"
  fL["adjust that individual item"] = "adjust that individual item"
  fL["|cffffffMove items by |c88ffff%s\n|cffffffRotate items by |c88ffff%.2f degrees"] = "|cffffffMove items by |c88ffff%s\n|cffffffRotate items by |c88ffff%.2f degrees"
  fL["%d centimeters"] = "%d centimeters"
  fL["%d meters"] = "%d meters"
  fL["%d changed item%s"] = "%d changed item%s"
  fL["items"] = "items"
  fL["|cffffffRestore %s in |c00ffff%s|cffffff to the last saved position%s|r?"] = "|cffffffRestore %s in |c00ffff%s|cffffff to the last saved position%s|r?"
  fL["Delete the Saved Selection \"%s\"?"] = "Delete the Saved Selection \"%s\"?"
  fL["Overwrite the Saved Selection \"%s\"?"] = "Overwrite the Saved Selection \"%s\"?"
  fL["Delete the saved scene \"%s\"?"] = "Delete the saved scene \"%s\"?"
  fL["Delete the Saved Selection \"%s\"?"] = "Delete the Saved Selection \"%s\"?"
  fL["Overwrite the Saved Selection \"%s\"?"] = "Overwrite the Saved Selection \"%s\"?"
  fL["%s Now paste part %d of the clipboard above."] = "%s Now paste part %d of the clipboard above."
  fL["Excellent."] = "Excellent."
  fL["Great."] = "Great."
  fL["Nice."] = "Nice."
  fL["Clipboard import failed:\n\n%s"] = "Clipboard import failed:\n\n%s"
  fL["Unspecified exception."] = "Unspecified exception."
  fL["Copy part %d of %d of your Clipboard Export from above"] = "Copy part %d of %d of your Clipboard Export from above"
  fL["Show part %d of %d"] = "Show part %d of %d"
  fL["Scene clone failed:\n%s"] = "Scene clone failed:\n%s"
  fL["%s can periodically save a backup of your furniture placement automatically:\n" .. "- Separate backups are maintained for each home.\n" .. "- The %d most recent backups are retained for each home.\n" .. "- A new backup is saved upon leaving your home.\n" .. "  * Avoid force closing the game (such as ALT + F4) as this will lose any unsaved add-on data (including the latest snapshot of your home)"] = "%s can periodically save a backup of your furniture placement automatically:\n" .. "- Separate backups are maintained for each home.\n" .. "- The %d most recent backups are retained for each home.\n" .. "- A new backup is saved upon leaving your home.\n" .. "  * Avoid force closing the game (such as ALT + F4) as this will lose any unsaved add-on data (including the latest snapshot of your home)"
  fL["Restore the backup\n\"%s\"?"] = "Restore the backup\n\"%s\"?"
  fL["%s at %s (%d items) [Before Restore]"] = "%s at %s (%d items) [Before Restore]"
  fL["(|c00ffffGroup %d|cffffff) "] = "(|c00ffffGroup %d|cffffff) "
  fL["%d effect%s"] = "%d effect%s"
  fL["Mail a snapshot of this home's Essential Effects(TM) data to |cffff66%s|r?\n\n" .. "Note that sharing your data by mail will send one or more mail messages to the recipient, " .. "depending on the number of effects that you have placed in this home."] = "Mail a snapshot of this home's Essential Effects(TM) data to |cffff66%s|r?\n\n" .. "Note that sharing your data by mail will send one or more mail messages to the recipient, " .. "depending on the number of effects that you have placed in this home."
  fL["|cffff33%s|r (NEW)"] = "|cffff33%s|r (NEW)"
  fL["   |cffff33%s|r (NEW)"] = "   |cffff33%s|r (NEW)"
  fL["|rpitch: %s%.2f|rdeg  yaw: %s%.2f|rdeg  roll: %s%.2f|rdeg"] = "|rpitch: %s%.2f|rdeg  yaw: %s%.2f|rdeg  roll: %s%.2f|rdeg"
  fL["|rx: %s%d|rcm  y: %s%d|rcm  z: %s%d|rcm  (%s%d|rcm away)"] = "|rx: %s%d|rcm  y: %s%d|rcm  z: %s%d|rcm  (%s%d|rcm away)"
  fL["|rwidth: %s%d|rcm  height: %s%d|rcm  depth: %s%d|rcm"] = "|rwidth: %s%d|rcm  height: %s%d|rcm  depth: %s%d|rcm"
  fL["Item"] = "Item"
  fL["%s %d item%s"] = "%s %d item%s"
  fL["Selected"] = "Selected"
  fL["Deselected"] = "Deselected"
  fL["Sending %s data..."] = "Sending %s data..."
  fL["Receiving %s data..."] = "Receiving %s data..."
  fL["%s's %s still appears to be inaccessible at the moment - but they have been notified. :)"] = "%s's %s still appears to be inaccessible at the moment - but they have been notified. :)"
  fL["|c00ffff%s|cffffff's |c00ffff%s|cffffff does not appear to be open for visitors (most likely a simple oversight).\n\n" .. "|cffff00Would you like to automatically notify this homeowner to make them aware of the issue?"] = "|c00ffff%s|cffffff's |c00ffff%s|cffffff does not appear to be open for visitors (most likely a simple oversight).\n\n" .. "|cffff00Would you like to automatically notify this homeowner to make them aware of the issue?"
  fL["Hello! This is an automated message sent via Essential Housing Tools just to let you know that I was " .. "unable to visit the Open House you are hosting at your %s. If possible, would you be able to check that " .. "home's Settings in the Housing Editor to verify that your Default Visitor Access is set to allow visitors? " .. "Thank you so much!"] = "Hello! This is an automated message sent via Essential Housing Tools just to let you know that I was " .. "unable to visit the Open House you are hosting at your %s. If possible, would you be able to check that " .. "home's Settings in the Housing Editor to verify that your Default Visitor Access is set to allow visitors? " .. "Thank you so much!"
  fL["An in-game mail has been sent to %s regarding visitor access for their %s. Thanks for letting them know!"] = "An in-game mail has been sent to %s regarding visitor access for their %s. Thanks for letting them know!"
  fL["%d second(s)"] = "%d second(s)"
  fL["%d minute(s), %d second(s)"] = "%d minute(s), %d second(s)"
  fL["%d minute(s)"] = "%d minute(s)"
  fL["Sharing has started and is estimated to take approximately:\n|c00ffff%s"] = "Sharing has started and is estimated to take approximately:\n|c00ffff%s"
  fL["Not long"] = "Not long"
  fL["Published |cffff33%d|rk / |cffff33700|rk FX data"] = "Published |cffff33%d|rk / |cffff33700|rk FX data"
  fL["Publish to Community (|cffff33%d|rk)"] = "Publish to Community (|cffff33%d|rk)"
  fL["\n\n%s wishes you a pleasant visit and politely asks that first-time guests sign in...\n"] = "\n\n%s wishes you a pleasant visit and politely asks that first-time guests sign in...\n"
  fL["Request failed:\n%s"] = "Request failed:\n%s"
  fL["No saved data was found for @player account \"%s\"."] = "No saved data was found for @player account \"%s\"."
  fL["The account \"%s\" contains data for %d home(s), including:\n\n" .. "%-5d Saved Selection(s)\n" .. "%-5d Scenes(s)\n" .. "%-5d Triggers(s)\n" .. "%-5d Build(s)\n\n" .. "|cff9900Do you want to OVERWRITE your saved data with these records?|r"] = "The account \"%s\" contains data for %d home(s), including:\n\n" .. "%-5d Saved Selection(s)\n" .. "%-5d Scenes(s)\n" .. "%-5d Triggers(s)\n" .. "%-5d Build(s)\n\n" .. "|cff9900Do you want to OVERWRITE your saved data with these records?|r"

--Menu Options
  local NewOption = {
    
  }

--Special Setting
  --Menu Part
  
  --String Format Part
  local FunList = {
    "PublishFX",
    "RefreshEffectsPreviewState",
    "PreviewPublishedFX",
    "SummonKiosk",
    "CopySelectionToClipboard",
    "StackInGroups",
    "DeselectAlternateItems",
    "RefreshSelection",
    "RefreshDirectionalPad",
    "RefreshSelectionLinkItemsMode",
    "SetPrecisionInfoTooltip",
    "SetupToolDialogSelectionTab",
    "SetupToolDialogAnimateTab",
    "SetupManageSelectionsDialog",
    "ProcessClipboardImport",
    "ProcessClipboardExport",
    "SetupCloneSceneDialog",
    "SetupBackupsDialog",
    "QueueRefreshBackups",
    "RefreshPlacedEffectsList",
    "SetupEHTEffectsButtonContextMenu",
    "RefreshItemInfoDialog",
    "DisplaySelectionChangeNotification",
    "ShowSendingMapcast",
    "ShowReceivingMapcast",
    "ConfirmNotifyOpenHouseOwner",
    "SetupGuildcast",
    "ShowShareFXContextMenu",
    "ShowMultiPlaceContextMenu",
    "ShowGuestbook",
    "ResetGuestbook",
    "InitiateTransferData",
  }
  local OldFormat = string.format
  for i = 1, #FunList do
    ZO_PreHook(EHT.UI, FunList[i], 
      function()
        string.format = function(text1, text2, text3, ...)
          text1 = fL[text1] or text1
          text2 = fL[text2] or text2
          text3 = fL[text3] or text3
          return OldFormat(text1, text2, text3, ...)
        end
      end
    )
    ZO_PostHook(EHT.UI, FunList[i],
      function()
        string.format = OldFormat
      end
    )
  end

  --Control Part
  local OldControl = EHT.CreateControl
  EHT.CreateControl = function(...)
    local control = OldControl(...)
    local OldText = control.SetText
    --Some Controls without SetText function
    if not OldText then return control end
    --Change SetText functions for controls created by EHT
    control.SetText = function(c, t)
      t = cL[t] or t
      OldText(c, t)
    end
    return control
  end

  --Dialog Part
  local OldAlertDialog = EHT.UI.ShowAlertDialog
  EHT.UI.ShowAlertDialog = function(title, body, ...)
    body = dL[body] or body
    OldAlertDialog(title, body, ...)
  end

  local OldConfirmDialog = EHT.UI.ShowConfirmationDialog
  EHT.UI.ShowConfirmationDialog = function(title, body, ...)
    body = dL[body] or body
    OldConfirmDialog(title, body, ...)
  end

  local OldCustomDialog = EHT.UI.ShowCustomDialog
  EHT.UI.ShowCustomDialog = function(message, b1, b1cb, b2, b2cb)
    message = dL[message] or message
    b1 = dL[b1] or b1
    b2 = dL[b2] or b2
    OldCustomDialog(message, b1, b1cb, b2, b2cb)
  end

  --InfoTooltip Part
  local OldTooltip = EHT.UI.ShowTooltip
  EHT.UI.ShowTooltip = function(tooltip, control, message, ...)
    message = tL[message] or message
    OldTooltip(tooltip, control, message, ...)
  end

  --Interaction Prompt Part
  local OldPrompt =  EHT.UI.ShowInteractionPrompt
  EHT.UI.ShowInteractionPrompt = function(keybind, label, ...)
    label = pL[label] or label
    OldPrompt(keybind, label, ...)
  end

return true end