print("***循环语句***")
-- while   do whlie   for

print("***whlie 循环***")

a = 5;
while a == 5 do
	print(a)
	a = a + 1;
end

print("***do whlie 循环***")

num = 5;
repeat
	print(num)
	num = num + 1;
until num > 5  --满足条件跳出  结束条件


print("***for循环***")

--默认递增 i默认+1
for i=2,5 do
	print(i)
end

for i=1,6,2 do
	print(i)
end

for i=8,2,-2 do
	print(i)
end