string_util = {
    table = {}
}

function string_util.split(inputString, separator)
    local stringTable = {}
    for str in string.gmatch(inputString..separator, "([^"..separator.."]*)"..separator) do
        table.insert(stringTable, str)
    end
    return stringTable
end

function string_util.split_trim(inputString, separator)
    local stringTable = {}
    for str in string.gmatch(inputString, "([^"..separator.."]+)") do
        str = string.gsub(str, "%s+", "")
        table.insert(stringTable, str)
    end
    return stringTable
end

function split_test(inputstr, sep) 
    sep=sep or '%s' 
    local t={}  
    for field,s in string.gmatch(inputstr, "([^"..sep.."]*)("..sep.."?)") do 
        table.insert(t,field)  
        if s=="" then return t end 
    end 
end

function string_util.is_empty(inputString)
    if inputString == nil or inputString == '' then
        return true
    end
    return false
end

function string_util.starts_with(str, start)
    --return string.sub(str, 1, #start)
    return str:sub(1, #start) == start
end

function string_util.insert(str1, str2, pos)
    --return string.sub(str1,1,pos)..str2..string.sub(str1,pos+1)
    return str1:sub(1,pos)..str2..str1:sub(pos+1)
end