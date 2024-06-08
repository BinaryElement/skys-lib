function get_delayed_error_message()
	local errorDummy = game.item_prototypes["sim-error-dummy"];
	if (errorDummy) then
		return errorDummy.localised_description
	end
	return nil
end

function set_delayed_error_message(modName, value)
    print("[Sky's Infinite Modules] Caught error ["..value.."]")

	if (data.raw["item"]["simerrordummy"]) then
		print("[Sky's Infinite Modules]    An error is already stored.")
	else
		local errorDummy = 
		{
			icon = "__base__/graphics/icons/iron-gear-wheel.png",
			icon_mipmaps = 4,
			icon_size = 64,
			name = "sim-error-dummy",
			order = "zzzzzz",
			stack_size = 100,
			subgroup = "intermediate-product",
			type = "item",
			localised_description = "["..modName.."]\n\n"..value
		}
		data:extend({errorDummy})
	end
end