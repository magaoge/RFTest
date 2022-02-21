*** Settings ***
Library  SeleniumLibrary
Variables   C:/Users/MAG/PycharmProjects/pyRFProject/1元素定位/登录页面定位元素.py
Variables   C:/Users/MAG/PycharmProjects/pyRFProject/3测试数据/登陆测试数据.py


*** Keywords ***
登录
    [Arguments]     ${username}     ${password}
    wait Until Element Is Visible   class:${loginIconClassName}    20
    click element   class:${loginIconClassName}
    wait Until Element Is Visible   id:${usernameInputId}     20
    input text  id:${usernameInputId}   ${username}
    input text  id:${passwordInputId}   ${password}
    click element   class:${loginButtonClassName}

