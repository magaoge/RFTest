*** Variables ***
${ziyuan}   100000000000

*** Keywords ***
两个数字之积
    [Arguments]     ${a}    ${b}
    [Return]    ${sum}
    [Documentation]     这是两个数字之和的计算关键字
    ...  a:数字1
    ...  b:数字2
    ${sum}=     Evaluate  ${a}*${b}