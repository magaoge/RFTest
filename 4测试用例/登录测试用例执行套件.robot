*** Settings ***
Resource  C:/Users/MAG/PycharmProjects/pyRFProject/2页面对象/登陆页面功能关键字集.robot
#Test Setup  Open Browser  https://www.juhe.cn/?f=head  Chrome
#Test Teardown  close browser
#
#Default Tags    默认标签1   默认标签2
#Force Tags      强制标签1   强制标签2

*** Test Cases ***
if循环
    ${a}    set variable  20
    ${b}    set variable  30
    ${x}    set variable  "mm"
    run keyword if  ${a}==${b}  log  ${True}
    ...     else if     ${a}!=${b}  log     ${False}
#    ...     else



用例-登陆测试
    [setup]     用例自身的前置动作
    [teardown]  用例自身的后置动作
    [tags]  标签1 标签2
    登陆页面功能关键字集.登录   ${loginSuccessData[0]["phoneNum"]}      ${loginSuccessData[0]["password"]}

