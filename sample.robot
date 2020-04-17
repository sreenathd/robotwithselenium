*** Settings ***
Documentation     Demo
Library           SeleniumLibrary
Variables    test_config.yaml


*** Test Cases ***
Get to Gogole Search
    Open Browser To Google Page
	[Teardown]    Close Browser
	
*** Keywords ***
Open Browser To Google Page
	Log   ${sites.google.https_url}
	Log   ${sites.google.browser}
    Open Browser    ${sites.google.https_url}    ${sites.google.browser}
    Title Should Be    ${locators.mainpage.title}
