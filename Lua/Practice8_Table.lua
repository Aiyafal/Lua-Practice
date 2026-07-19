print("***复杂数据类型 table***")
--所有的复杂数据类型都是table

print("***数组***")

a = {1,2,nil,4,"324",true,nil};
print(a[1]);

--#是通用的获取长度的关键字
--在打印长度的时候 空会被忽略
--如果表中每一数据位空 会影响#获取的长度
print(#a);

print("***数组的遍历***")

--遇到nil依旧会停
for i=1,#a do
   print(a[i]);
end

print("***二维数组***")

b = {{1,2,3},{4,5,6}};  

print(b[1][2]);
print(b[2][3]);

print("***二维数组的遍历***")

for i=1, #b do
   c = b[i];
   for j=1,#c do
   	print(c[j]);
   end
end

print("***自定义索引***")

aa ={[0]=1,2,3,[-1]=4,5};

print(aa[0]);
print(aa[-1]);
print(aa[1]);
print(aa[2]);
print(aa[3]);

print(#aa) --其实忽略了<=0的自定义索引只认了{2,3,5}

--

bb = {[1]=1,[2]=2,[5]=4,[6]=6}; --一旦超过2个元素未填，则会判定之后的为空
cc = {[1]=10,[2]=20,[4]=40,[6]=60};
print(#bb);
print(#cc); 



print("***第二部分***")

print("***ipairs迭代器遍历***")
--迭代器遍历 主要是用来遍历表的
--#得到长度 其实不准确 一般不要用#来遍历表

d = {[0]=1,2,4,[-1]=7,3,[5]=6};

--ipairs
--ipairs遍历 还是从1开始从后遍历的  小于等于0的值得不到
--只能找到连接索引的 键 如果中间断序了 也无法遍历出后面的内容
for i,k in ipairs(d) do
 	print("ipairs遍历键值"..i.."_"..k);
 end 

 print("***ipairs迭代器遍历键***")
 
 for i in ipairs(d) do
 	print("ipairs遍历键"..i);
 end

--pairs 能够把所有的键都找到 通过键可以获得值
 print("***pairs迭代器遍历***")
 
 for i,v in pairs(d) do
 	print("pairs遍历键值"..i.."_"..v);
 end
  

  print("***pairs迭代器遍历键***")

  for i in pairs(d) do
  	print("pairs遍历键"..i);
  end