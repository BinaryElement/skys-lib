require("defines")

error_util = {
	table = {}
}

function error_util.error_protected_call(func) 
	xpcall(func, function(errMessage)
		error_util.set_delayed_error_message(errMessage)
	end)
end

function error_util.get_delayed_error_message()
	local errorDummy = prototypes.item["sklib-error-dummy"];
	if (errorDummy) then
		return errorDummy.localised_description
	end
	return nil
end

function error_util.set_delayed_error_message(value)
    print("[Sky's Library] Caught error ["..value.."]")
	log(value)
	if #value >= 200 then value = string.sub(value, 1, 196).."..." end

	if (data.raw["item"]["simerrordummy"]) then
		print("[Sky's Library]    An error is already stored.")
	else
		local errorDummy = 
		{
			icon = "__base__/graphics/icons/iron-gear-wheel.png",
			icon_mipmaps = 4,
			icon_size = 64,
			name = "sklib-error-dummy",
			order = "zzzzzz",
			stack_size = 100,
			subgroup = "intermediate-product",
			type = "item",
			localised_description = value
		}
		data:extend({errorDummy})
		data.raw["utility-constants"]["default"].main_menu_background_image_location = "__skys-lib__/graphics/background-image.jpg"
		data.raw["utility-constants"]["default"].main_menu_simulations = {}
		did_error = true
	end
end