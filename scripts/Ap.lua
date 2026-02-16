--ToDo 
-- Add a global script
--Add a third file with solely a list of items.
--Switch item giving to use a list
--Add a list in the save so that i can see what's been done
--Add a RoomId to the save so you dont accidently use the wrong one?
--Have quests not contained within the sent locations to be saved until reconnected
-- Use Thousands for ids so i can do if >1000, >2000 and <3000.
-- Put the edited version back into the working ap connevction one.
-- Make custom quests 1 and 2 that are triggered and complaeted upon obtaining the ring and dagger at the start.
-- make an apworld with just the first two items
-- Expand to do the main quest










local UI = require("openmw.ui")
local util = require('openmw.util')
local self = require("openmw.self")
local core = require("openmw.core")

local types = require("openmw.types")



print("Console Set")
---@type APClient

  


---@type APClient | nil

Blue = util.color.rgb(0,0,255)

local function showMsg(msg)
    UI.showMessage(msg, { showInDialog = false })
end











function onConsole(mode, command, selectedObject)
  end



function Quest(questId, stage)
  print(questId, stage)
end


--- do removing from inventory
      
 

function Key(key)
  --UI.setConsoleMode("Archipelago")
  -- Checks inventory for items in scripts.lists.ApList
  --core.sendGlobalEvent(Remove,checkinvitem)
  core.sendGlobalEvent("Remove")
end

function Control(id)
  --UI.setConsoleMode("Archipelago")
end



return {
    engineHandlers = {
        onConsoleCommand = onConsole,
        onKeyPress = Key,
        onQuestUpdate = Quest,
        onControllerButtonPress = Control,
  
  
        onUpdate = function()   
        end
    }
}


