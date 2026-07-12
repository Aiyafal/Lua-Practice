--获取字符串长度 UTF-8中中文相当于3个字符

a = "abcd好好好";
print(#a);  --13个字符

--多行字符串打印  转义字符 \n 
print("123\n123");

--多行字符串打印第二种  
b = [[Welcome
to
my
world]]
print(b);

--字符串拼接  .. 若将两个变量拼接，会默认为两个string
print("123" .. "321");

--%d 与数字拼接  %a 与任何字符拼接  %s 与字符配对  tostring()字符串转换 
print(string.format("我今年%d岁",12));

--字符串提供的公共方法
str = "abcDFgjK";

--并不会改变原字符串
print(string.upper(str)); --小写转大写
print(string.lower(str)); --大写转小写
print(string.reverse(str)); --翻转字符串
print(string.find(str,"cDF")); --字符串索引查找
print(string.sub(str,3,4)); --字符串截取  从c截取到D 若为(string,3)则从3截取至最后一位
print(string.rep(str,3)); --字符串重复
print(string.gsub(str,"cD","!!")); --字符串修改 后面出现数字代表修改了几次

--字符串转ASCII码
c = string.byte("Lua",1);
print(c);
--ASCII码转字符串
print(string.char(c));