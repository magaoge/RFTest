*** Settings ***
Library     DateTime
Library  SeleniumLibrary
Resource    自定义关键字集合.robot
Variables   外部变量.py
Resource  test1/自定义关键字集合.robot
Variables  外部变量.py

*** Test Cases ***
用例-嵌套类型数据类型
    log  ${ListAndDict}
    log  ${ListAndDict[0]}
    log  ${ListAndDict[0]["name"]}

用例-打开浏览器
    Open Browser  http://www.baidu.com  Chrome
    自定义关键字集合.两个数字之积
    两个数字之积

用例-引用变量
    log  ${str}
    log  ${list1}
    log  ${list1[1]}
    log  ${dictMy.name}


用例 - 定义变量

#    log  @{list}
    log  ${list}
#    获取列表中的值
    log  ${list[1]}
#    根据key值获取value
    log  ${dict.foo}




用例-两数之积
    ${sum}=     两个数字之积      1   2

用例1-用RF输出hello,world
    log     hello world!    #第一条日志


用例2-RF中的异常处理
    ${status}=  run keyword and return status  log  hello world!

用例3-获取当前时间
    ${date}=    get current date

用例4-获取两数之和
    ${sum}=    两个数字之和    2   4