require("defines")

log_util = {
    table = {}
}

function log_util.log(message, indentAmount)
    if indentAmount == nil then indentAmount = 0 end
    log_util.log_with_level_and_indent(message, 0, log_util.get_indent(indentAmount), "Debug:   ")
end

function log_util.log_info(message, indentAmount)
    if indentAmount == nil then indentAmount = 0 end
    log_util.log_with_level_and_indent(message, 1, log_util.get_indent(indentAmount), "Info:    ")
end

function log_util.log_warning(message, indentAmount)
    if indentAmount == nil then indentAmount = 0 end
    log_util.log_with_level_and_indent(message, 2, log_util.get_indent(indentAmount), "Warning: ")
end

function log_util.log_error(message, indentAmount)
    if indentAmount == nil then indentAmount = 0 end
    log_util.log_with_level_and_indent(message, 3, log_util.get_indent(indentAmount), "Error:   ")
end

function log_util.log_with_level_and_indent(message, level, indent, level_string)
    if level == nil then level = 0 end
    if level < logging_level_console and level < logging_level_chat and level < logging_level_aggressive then return end
    local loc = ""
    if log_source then
        local info = debug.getinfo(3, "S")
        if info ~= nil then 
        loc = " ["..info.short_src.."]"
        else
        loc = " [Unknown Source]"
        end
    end
    local str
    str = "[S.LOG]"..level_string..indent..message..loc
    if level >= logging_level_aggressive then
        --TODO aggressive message here
    end
    if level >= logging_level_chat then
        --TODO chat message here
        if game then
            game.print(str)
        end
    end
    if level >= logging_level_console then
        print(str)
    end
end

function log_util.get_indent(indentAmount)
    if indentAmount < 1 then return "" end
    local str = ""
    for i=1,indentAmount,1 do
        str = "   "..str
    end
    return str
end