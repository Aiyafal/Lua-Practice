print("***复杂数据类型 table 2***")

print("***字典***")

print("***字典的声明**")

a = {["name"]="ssss",["age"]=14,["1"]=5};
print(a["name"]);

--还可以类似 .成员变量的形式得到值 但是不能是数字
print(a.name);
--print(a.1) 会报错

--赋值修改
a["name"]= "asas";

--新增
a["sde"] = "nnn";

--删除
a["sde"] = nil;

print("***字典的遍历***")

--模拟字典 遍历一定要用pairs
for k,v in pairs(a) do
	--可以传多个参数 一样可以打印出来
	print(k,v);
end

for k in pairs(a) do
	print(k);
	print(a[k]);
end

for _,k in pairs(a) do
	print(k);
end

print("***类和结构体***")
--Lua中默认没有面向对象
--成员变量 成员函数

Student = {
	age = 1,
	sex = true,

	Up = function ()
	    --这样写 这个age 和表中的age没有任何关系 是一个全局变量
	    --print(age)

	    --一定要指定是谁的 所以要使用 表名.属性 或 表名.方法
	    print(Student.age);
		print("My grades ");
	end,
    Learn = function (t)
       --第二种 能够在函数内部调用自己属性或者方法的 方法
       --把自己作为一个参数传进来，在内部 访问
	   print(t.sex);
	   print("I do it");
    end
}

--lua中 .和: 的区别
--冒号调用方法 会默认把调用者 作为第一个参数传入方法中
Student.Learn(Student);

Student:Learn();

--声明表过后 在表外去声明表有的变量和方法
Student.name = "ggg"
Student.Speak = function ()
	print("说话");
end

function Student:Speak2()
	--self 表示传进来的第一个参数
	print(self.name.."说话2");
end

--Lua中类的表现 更像是一个类中有很多 静态变量和函数
print(Student.age);
Student.Up();
Student:Speak2();

print("***表的公共操作***")
--表中 提供的一些公共方法

t1 = {{age = 1,name = "123"},{age = 2, name = "345"}};

t2 = {name = "www",sex = true};

print("***插入***")
--插入  默认插入最后的位置
table.insert(t1,t2);

print("***删除***")
--删除指定元素
--remove方法 传表进去 会移除最后一个索引的内容
table.remove(t1);

-- 传两个参数 第一个参数 是要移除内容的表   第二个参数 是要移除内容的索引
table.remove(t1,1);

print("***排序***")
--排序 默认从小到大
t3 = {2,4,9,5,3};

table.sort(t3);
for _,k in pairs(t3) do
	print(k);
end

table.sort( t3, function(a,b)
      if a>b then
      	return true
      end
end )

for _,v in pairs(t3) do
	print(v);
end

print("***拼接***")
t4 = {"123","456","789","1011"}
stri = table.concat( t4, " + ")
print(stri);
