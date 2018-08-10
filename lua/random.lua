
local count = {}
for i = 1,1000000 do
	local num = math.random(1,100)
	count[num] = (count[num] or 0) + 1
end

local min,max = count[1],count[1]
for key,value in pairs(count) do
	print(key,value)
	max = (value > max) and value or max
	min = (value < min) and value or min
end

print(string.format("max:%s,min:%s,diff:%s",max,min,max - min))
