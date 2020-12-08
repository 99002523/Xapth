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
         
    ${apr}    csvfinder    Click on Apple Watch Series 6
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    
    Click Element    ${apr}  
    
    ${apr}    csvfinder    Click on Why Apple Watch
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    ${apr}    csvfinder    Click on Buy
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    ${apr}    csvfinder    Click on Filter
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    ${apr}    csvfinder    Click on Titanium
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    

    ${apr}    csvfinder    Click on proceed
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    
    ${apr}    csvfinder    Click on 44mm
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    
    ${apr}    csvfinder    Click on add-to-cart
    Scroll Element Into View    ${apr}
    Wait Until Element Is Visible    ${apr}    30s  
    Click Element    ${apr}
    
    sleep    5s
    ${apr}    csvfinder    Click on 1 
    Scroll Element Into View    ${apr}  
    Wait Until Element Is Visible    ${apr}    30s
    Click Element    ${apr}
    
    Wait Until Element Is Visible    //button[@id='shoppingCart.actions.navCheckout']    30s    
    Page Should Contain    Your bag total is    