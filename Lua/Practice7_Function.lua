print("***函数***")

function function_name( ... )
	-- body
end

a=function()
end

print("***无参数无返回值***")

function F1( ... )
	print("F1");
end

F1();

--另一种形式,类似于委托和事件的写法
F2 = function( ... )
	print("F2");
end

F2();

print("***有参数***")

function F3( a )
	print(a);
end

F3(3);

--如果传入参数 和函数参数不匹配，不会报错 只会补空(nil) 或者 丢弃
F3();
F3(1,2,3);

print("***有返回值***")

function F4( b )
	return b,"字符",true;
end

--多返回值时 声明多个变量接取即可
--如果变量不够 只接取对应位置的返回值
--若变量多了 则直接赋值nil
temp,temp2,temp3,temp4 = F4(1);
print(temp);
print(temp2);
print(temp3);
print(temp4);

print("***函数类型***")

F5 = function ( )
	-- body
end

print(type(F5));

print("***函数重载***")
--函数不支持重载 默认调用最后声明的函数
F6 = function ( )
	print("GOGOGO")
end
F6 = function ( str )
	print(str);
end

F6();

print("***变长函数***")

function F7 (...)
--变长参数使用 用一个表存起来
   arg = {...};

   for i=1,#arg do
	  print(arg[i])
   end

end

F7(1,2,true,"victory",4,5)

print("***函数嵌套***")

function F8()
   return function()
   	print(123);
   end
end

f9 = F8();   --f9就相当于 function() print(123) end
f9();

--闭包
function F9 (x)
	--改变传入参数x的生命周期
	return function(y)
		return x + y;
	end
end

f10 = F9(10);  --此时f10就相当于 function(y) return 10 + y ; end
print(f10(5));
