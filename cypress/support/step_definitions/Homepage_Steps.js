const { Given, When } = require("@badeball/cypress-cucumber-preprocessor");

const url = "https://webdriveruniversity.com/";

Given('I navigate the webdriveruniversitypage homepage', ()=> {
    cy.visit(url);
})

When('I click on the contact us button', ()=>{
    cy.get('#contact-us').invoke('removeAttr', 'target').click();
})
 
When('I click on the login portal button', ()=>{
    cy.get('#login-portal').invoke('removeAttr', 'target').click()
}) 