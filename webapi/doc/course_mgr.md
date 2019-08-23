# 课程管理API接口

### 增加课程接口

用来创建一个新的培训课程

#### 请求语法
```java
POST /api/mgr/sq_mgr/ HTTP/1.1
Content-Type:   application/x-www-form-urlencoded
```

##### url请求参数
无url请求参数


##### 请求体内容

```python
action	必填	填写add_course，表明是为了创建课程

data	必填	存储创建课程的信息，包括名称、描述、显示次序。
为json格式。例如：
{
  "name":"初中化学",
  "desc":"初中化学课程",
  "display_idx":"4"
}
```

#### 响应语法
```java
HTTP/1.1 200 OK
Content-Type: application/json
```

##### 头部信息

Content-Type	必填 	正常情况下该值将被设为application/json，表示返回 JSON 格式的文本信息。

##### 响应内容
如果请求成功，返回json格式的消息体，如下所示，retcode值为0表示添加成功，id是新加课程对应的ID号
```json
{
    "retcode": 0
    "id" : 1212
}
```

##### 说明
增加课程的名称如果已经存在，则会创建失败返回结果为
```json
{
    "retcode": 2,
    "reason": "同名课程已经存在"
}
```





<br><br><br><br>
### 列出课程接口
用来列出系统里所有的培训课程信息

#### 请求语法
```java
GET /api/mgr/sq_mgr/?action=list_course&pagenum=1&pagesize=20 HTTP/1.1
```

##### url请求参数
```python
action	填写list_course，表明是要列出所有课程信息

pagenum	表示当前要显示的是第几页，目前固定填写1

pagesize	表示一页最多显示多少条课程信息，目前固定填写20
```

##### 请求体内容
该请求无需指定请求内容。

#### 响应语法
```java
HTTP/1.1 200 OK
Content-Type: application/json
```

##### 头部信息

Content-Type	正常情况下该值将被设为application/json，表示返回 JSON 格式的文本信息。

##### 响应内容
如果请求成功，返回json格式的消息体，如下所示
```json
{
    "retlist": [
        {
            "desc": "初中语文",
            "id": 418,
            "display_idx": 1,
            "name": "初中语文"
        },
        {
            "desc": "初中数学",
            "id": 419,
            "display_idx": 2,
            "name": "初中数学"
        },
        {
            "desc": "初中英语",
            "id": 420,
            "display_idx": 3,
            "name": "初中英语"
        }
    ],
    "total": 3,
    "retcode": 0
}

retcode值为0表示查询成功。
total 值表示总共有多少门课程信息
retlist的内容是一个数组，其中每个元素对应一门课程信息。
```









<br><br><br><br>
### 修改课程接口
用来修改一门培训课程的信息

#### 请求语法
```java
PUT /api/mgr/sq_mgr/ HTTP/1.1
Content-Type:   application/x-www-form-urlencoded
```

##### url请求参数
无url请求参数

##### 请求体内容
```python
action	填写modify_course，表明是为了修改课程信息

id	 填写要修改的课程的id号数字
newdata	 存储创建修改后课程的信息，包括名称、描述、显示次序,为json格式。例如：
{
  "name":"初中化学",
  "desc":"初中化学课程",
  "display_idx":"4"
}
```

#### 响应语法
```java
HTTP/1.1 200 OK
Content-Type: application/json
```

##### 头部信息

Content-Type	正常情况下该值将被设为application/json，表示返回 JSON 格式的文本信息。

##### 响应内容
如果请求成功，返回json格式的消息体，如下所示，retcode值为0表示修改成功
```python
{
    "retcode": 0
}
```





<br><br><br><br>
### 删除课程接口
用来删除一门培训课程
#### 请求语法
```java
DELETE /api/mgr/sq_mgr/ HTTP/1.1
Content-Type:   application/x-www-form-urlencoded
```

##### url请求参数
无url请求参数

##### 请求体内容
```python
action	是	填写delete_course，表明是为了删除课程信息
id	是	填写要删除的课程的id号
```


#### 响应语法
```java
HTTP/1.1 200 OK
Content-Type: application/json
```

##### 头部信息

Content-Type	正常情况下该值将被设为application/json，表示返回 JSON 格式的文本信息。

##### 响应内容
如果删除成功，返回json格式的消息体，如下所示，retcode值为0表示删除成功
```python
{
    "retcode": 0
}
```


<br><br>

### 增加课程接口2

除了上面说的增加课程接口，还提供请求体完全是json 格式的方式添加课程

#### 请求语法
```java
POST /apijson/mgr/sq_mgr/ HTTP/1.1
Content-Type:   application/json
```

##### url请求参数
无url请求参数


##### 请求体内容

```json
{
  "action" : "add_course_json",
  "data"	 : {
    "name":"初中化学",
    "desc":"初中化学课程",
    "display_idx":"4"
  }
}
```

#### 响应语法
```java
HTTP/1.1 200 OK
Content-Type: application/json
```

##### 头部信息

Content-Type	必填 	正常情况下该值将被设为application/json，表示返回 JSON 格式的文本信息。

##### 响应内容
如果请求成功，返回json格式的消息体，如下所示，retcode值为0表示添加成功
```json
{
    "retcode": 0
}
```

##### 说明
增加课程的名称如果已经存在，则会创建失败返回结果为
```json
{
    "retcode": 2,
    "reason": "同名课程已经存在"
}
```
