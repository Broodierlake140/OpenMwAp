local core = require("openmw.core")
local world = require("openmw.world")
local  player = world.players[1]
local types = require("openmw.types")   
local inventory = types.Actor.inventory(player) 

local ap_Items = {1, "chargen dagger", 2, "MS_FargothRing"}


Give = function(itemid, count)
      print("Given")
      Item = world.createObject(itemid, count)
      Item:moveInto(types.Actor.inventory(player))
    end

Remove = function()
        for i = 2,10000,2
        do
          checkinvitem = inventory:find(value)
          if checkinvitem ~= nil then
            checkinvitem:remove(1)
            ---Temp CHecking giving this way
            Give(ap_Items[i],1)
          end
        end
       end


return{
  eventHandlers = {
    Give = Give,
    Remove = Remove,
  }

}
