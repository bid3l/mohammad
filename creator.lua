redis = (loadfile "redis.lua")()
function gettabchiid()
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls')
	local last = 0
    for filename in pfile:lines() do
        if filename:match('tabchi%-(%d+)%.lua') and tonumber(filename:match('tabchi%-(%d+)%.lua')) >= last then
			last = tonumber(filename:match('tabchi%-(%d+)%.lua')) + 1
			end		
    end
    return last
end
