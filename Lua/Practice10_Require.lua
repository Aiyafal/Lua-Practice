print("***全局变量和本地变量***")
--全局变量
a = 1;
b = "123";

for i=1,2 do 
	c = "三九四"
end

print(c);

--本地变量
for i=1,2 do 
	local d = "三九四"
end

print(d);

fun = function ( )
	local tt = "撒是的哇"
end

fun();
print(tt);

local G = 2;

print("***多脚本执行***")

--关键词 require("脚本名") require('脚本名') 
--在不同路径的需要把路径名写上
require("Test");
print(testA);
print(testlocalA);

print("***脚本卸载***")

--如果是require被加载执行的脚本，加载一次过后不会再被执行
require("Test");

--返回值是boolean 意思是 该脚本是否被执行
print(package.loaded["Test"]);

--卸载已经执行过的脚本
package.loaded["Test"] = nil;
print(package.loaded["Test"]);


print("***大G表***")
-- _G表是一个总表(table) 他将声明的所有全局的变量都存储在其中
for k,v in pairs(_G) do
	print(k,v);
end
--