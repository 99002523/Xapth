*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=screenshot    
Library    OperatingSystem  
Library    ../python/reader.py      
        
*** Test Cases ***
support
    Append To Environment Variable    Path   ${EXECDIR}${/}driver${/} 
    Open Browser    browser=chrome
    Maximize Browser Window
    Go To    url=https://www.apple.com/in/    
    Set Browser Implicit Wait    10s
    ${steps}    step Finder
    FOR    ${element}    IN    @{steps}
        Log To Console    ${\n}    
        Log To Console    ${element}
    END
    ${a}    Set Local Variable    ${3}    #${}     
    ${apr}    csvfinder    Click on Learn more
    Wait Until Element Is Visible    ${apr}    
    Click Element    ${apr}  
    ${apr}    csvfinder    Click on Watch the event
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    