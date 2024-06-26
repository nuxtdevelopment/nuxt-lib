local logger = {}

---@param ... any
function logger:inform(...)
    local text = table.concat({ ... }, ' ')

    if text and type(text) == 'string' then
        local formattedText = ('^5[INFORM]^7 %s'):format(text)

        print(formattedText)
    else
        lib.logger:error('34571')
    end
end

---@param ... any
function logger:success(...)
    local text = table.concat({ ... }, ' ')

    if text and type(text) == 'string' then
        local formattedText = ('^2[SUCCESS]^7 %s'):format(text)

        print(formattedText)
    else
        lib.logger:error('82842')
    end
end

---@param ... any
function logger:error(...)
    local text = table.concat({ ... }, ' ')

    if text and type(text) == 'string' then
        local formattedText = ('^1[ERROR]^7 %s'):format(text)

        print(formattedText)
    else
        lib.logger:error('09045')
    end
end

return logger
