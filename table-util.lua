table_util = {
    table = {}
}

function table_util.clean_nil(tab)
    for i=#tab,1,-1 do
        if tab[i] == nil then
            table.remove(tab, i)
        end
    end
end

function table_util.concat(t1,t2)
    for i=1,#t2 do
       t1[#t1+1] = t2[i]
    end
    return t1
end