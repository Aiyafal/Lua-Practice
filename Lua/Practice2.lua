--简单变量类型
--nil number string boolean

--[[
 复杂变量类型

 函数 function  表 table  数据结构 userdata  协同程序 thread
]]

--不需要声明变量类型，且可以随意赋值类似于 a=nil; 又可以让 a=1; 


--nil相当于null 
a = nil; 
print(a)

--number相当于float int double等数字
a = 1;

--string声明  和 C# 一致，但是多了'' ，C# 中为char类型
a =  "string";
a = 'string' ;

--boolean 和 C#一致
a = true;
a = false;

--type()函数可以得到变量的类型 返回值为string
type(a);
print(type(a));

--若是使用没有声明过的变量默认为nil ，不会报错

