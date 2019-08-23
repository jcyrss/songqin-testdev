


# Python 练习 5 




### 不定项选择

```python
- 下面的函数参数的定义格式 错误的有
    
A)    
def f1():
    print(1)
    
B) 
def f1(a):
    print(1)

C)     
def f1(a,b,c):
    print(1)

D) 
def f1(a;b;c):
    print(1)
    
    
    
- 对于下面的函数定义

def f1(a,b): 
    print((a*3 + b*5) / 23)
    
下面的调用语句，错误的有 
    
A) f1(3,4)
B) f1(a=3,b=4)
C) f1(3,b=4)
D) f1(a=3,4)    
E) f1(3)
F) f1(b=4,a=3)
    
    
    
- 下面的代码，哪些是执行会报错的 

A) int(33)    
    
B) int('3.3')
    
C) float(3h)

D) str([1,3])
    
    

- 定义这样一个函数
    
def e1():
    print('in e1')
    return False
     
     
- 下面说法正确的是 
    
A) 执行 False and e1()  屏幕会 显示 'in e1'
B) 执行 e1() and False 屏幕会 显示 'in e1'
C) 执行 True or e1() 屏幕会 显示 'in e1'
D) 执行 False or e1() 屏幕会 显示 'in e1'


- 有一个列表a，里面的内容分别是从0 到99999，要删除其中99998这个数字元素，下面的代码耗时最长的是
   
A)  del a[99998]

B)  del a[-2]
    
C)  a.pop(99998)

D)  a.remove(99998)


```



### 判断题
```python


- 使用函数，可以让代码在可理解性、可维护性上 有很大的提升

    
- 函数体代码的语句缩进必须是4个空格 

    
- 下面的代码，解释器执行完函数func1的代码后，还会返回接着执行func1() 下面的代码 print 'after call' 
    
print('before call')
func1()
print('after call')

    
- 函数的定义 和函数的调用在代码文件中 前后次序并不重要，只要都存在即可

    
- 函数的返回值可以是多个对象，中间用逗号隔开
    
    
- 获取 34,67,22,11 ,88 这些数字中最大的数字， 下面的python代码都是正确的
    
    max(34,67,22,11 ,88)
    max([34,67,22,11 ,88])
    max((34,67,22,11 ,88))
    
    
- 对一个字符串 a，我们用正数索引访问 最后一个元素，可以这样写 a[len(a)] 

    
- 内置函数type，可以查看所有python对象的类型，包括函数对象

    
- 下面的代码执行完后，变量b 的值仍然为 'a' 
def t2(para):
    para = 3

b= 'a'
t2(b)

    
    
- 下面的代码执行完后，变量b 的值仍然为 [1] 
def t2(para):
    para[0] = 3

b= [1]
t2(b)


    
- 下面的代码执行完后，变量b 的值仍然为 [1]
def t2(para):
    para = 3

b= [1]
t2(b)

解析：
因为函数里面 para=3 ， 这句代码
创建了新的对象数字3， 并将 para这个变量指向从原来的 列表对象 换成了 数字对象3
这个并不会影响 变量b 指向的对象。

我们记住一个规则， 多个变量指向一个对象， 然后其中一个变量 因为赋值语句而改变了指向关系。 
并不会影响别的变量 ，别的变量还是指向 原来的对象



- 对象方法其实就是隶属于该对象的函数
    
- 代码 'my name 123 jack'.endswith('jack') 返回结果是 True
    
- 代码 'my name 123 jack'.endswith('ack') 返回结果是 True
        
- 代码 'my name 123 jack'.startswith('ack') 返回结果是 True
    
- 代码 '1111'.isalpha() 返回结果是 True
    
- 代码 '111a'.isdigit() 返回结果是 True
    
- 代码 'my name is jack'.split(' ')[-1]   的结果是 'jack' 
    
- 字符串的replace方法只能替换第一个找到的子字符串,比如
'hi, jack, you are smart, jack'.replace('jack','mary') 

    

    
- 列表的append方法只能添加元素到列表尾部， 而insert方法只能插入元素到列表的头部 
    


```









<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>












### 不定项选择

```python
- 下面的函数参数的定义格式 错误的有  （d）
    
A)    
def f1():
    print(1)
    
B) 
def f1(a):
    print(1)

C)     
def f1(a,b,c):
    print(1)

D) 
def f1(a;b;c):
    print(1)
    
    
    
- 对于下面的函数定义

def f1(a,b): 
    print((a*3 + b*5) / 23)
    
下面的调用语句，错误的有  （d,e）
    
A) f1(3,4)
B) f1(a=3,b=4)
C) f1(3,b=4)
D) f1(a=3,4)    
E) f1(3)
F) f1(b=4,a=3)
    
    
    
- 下面的代码，哪些是执行会报错的 （bc）

A) int(33)    
    
B) int('3.3')
    
C) float(3h)

D) str([1,3])
    
    

- 定义这样一个函数
    
def e1():
    print('in e1')
    return False
     
     
- 下面说法正确的是  (b,d)   
    
A) 执行 False and e1()  屏幕会 显示 'in e1'
B) 执行 e1() and False 屏幕会 显示 'in e1'
C) 执行 True or e1() 屏幕会 显示 'in e1'
D) 执行 False or e1() 屏幕会 显示 'in e1'


- 有一个列表a，里面的内容分别是从0 到99999，要删除其中99998这个数字元素，下面的代码耗时最长的是 (d)
   
A)  del a[99998]

B)  del a[-2]
    
C)  a.pop(99998)

D)  a.remove(99998)


```



### 判断题
```python


- 使用函数，可以让代码在可理解性、可维护性上 有很大的提升 (对)

    
- 函数体代码的语句缩进必须是4个空格 (错)

    
- 下面的代码，解释器执行完函数func1的代码后，还会返回接着执行func1() 下面的代码 print 'after call'   (对)
    
print('before call')
func1()
print('after call')

    
- 函数的定义 和函数的调用在代码文件中 前后次序并不重要，只要都存在即可 (错)

    
- 函数的返回值可以是多个对象，中间用逗号隔开 (对)
    
    
- 获取 34,67,22,11 ,88 这些数字中最大的数字， 下面的python代码都是正确的(对)
    
    max(34,67,22,11 ,88)
    max([34,67,22,11 ,88])
    max((34,67,22,11 ,88))
    
    
- 对一个字符串 a，我们用正数索引访问 最后一个元素，可以这样写 a[len(a)] （错，应该是 a[len(a)-1]）

    
- 内置函数type，可以查看所有python对象的类型，包括函数对象 (对)

    
- 下面的代码执行完后，变量b 的值仍然为 'a'  (对)
def t2(para):
    para = 3

b= 'a'
t2(b)

    
    
- 下面的代码执行完后，变量b 的值仍然为 [1] (错)
def t2(para):
    para[0] = 3

b= [1]
t2(b)


    
- 下面的代码执行完后，变量b 的值仍然为 [1] (对)
def t2(para):
    para = 3

b= [1]
t2(b)





- 对象方法其实就是隶属于该对象的函数 (对)
    
- 代码 'my name 123 jack'.endswith('jack') 返回结果是 True (对)
    
- 代码 'my name 123 jack'.endswith('ack') 返回结果是 True (对)
        
- 代码 'my name 123 jack'.startswith('ack') 返回结果是 True (错)
    
- 代码 '1111'.isalpha() 返回结果是 True (错)
    
- 代码 '111a'.isdigit() 返回结果是 True (错)
    
- 代码 'my name is jack'.split(' ')[-1]   的结果是 'jack' (对) 
    
- 字符串的replace方法只能替换第一个找到的子字符串,比如
'hi, jack, you are smart, jack'.replace('jack','mary') 
 (错)
    

    
- 列表的append方法只能添加元素到列表尾部， 而insert方法只能插入元素到列表的头部 (错)
    


```
