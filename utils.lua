function printTable(t, indent)
    indent = indent or 0
    if type(t) ~= "table" then
        print("Error: Expected a table, got " .. type(t))
        return
    end
    local prefix = string.rep("  ", indent)
    print(prefix .. "Table contents:")
    for key, value in pairs(t) do
        if type(value) == "table" then
            print(prefix .. tostring(key) .. " (table):")
            printTable(value, indent + 1)
        else
            print(prefix .. tostring(key) .. ": " .. tostring(value))
        end
    end
end

function contains(t, value)
    if type(t) ~= "table" then
        return false
    end
    for _, v in pairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

function getValueById(t, id)
    if type(t) ~= "table" then
        return nil, "Error: Expected a table."
    end
    if t[id] == nil then
        return nil, "Error: Key not found."
    end
    return t[id]
end

function removeByKey(t, key)
    if type(t) ~= "table" then
        return false, "Error: Expected a table."
    end
    if t[key] ~= nil then
        t[key] = nil
        return true
    else
        return false, "Error: Key not found."
    end
end

function addOrUpdate(t, key, value)
    if type(t) ~= "table" then
        return false, "Error: Expected a table."
    end
    t[key] = value
    return true
end

function isInMap(t, key)
    if type(t) ~= "table" then
        return false, "Error: Expected a table."
    end
    return t[key] ~= nil
end

function resetMap(t)
    if type(t) ~= "table" then
        return nil, "Error: Expected a table."
    end
    for k in pairs(t) do
        t[k] = nil
    end
    return t
end