const { When, Then } = require("@badeball/cypress-cucumber-preprocessor");


When('I type a first name', () => {
    cy.get('[name="first_name"]').type('Shokrullah');
})

When('I type a last name', () => {
    cy.get('[name="last_name"]').type('Akhlaqi');
})

When('I enter an email address', () => {
    cy.get('[name="email"]').type('Shokrullah@touchsource.com');
})

When('I type a comment', () => {
    cy.get('textarea.feedback-input').type('Welcome to my demo testing')
})

When('I click on submit button', ()=>{
    cy.get('[type="submit"]').click()
})

Then('I should be presented with a successful contact us submission message', ()=> {
    cy.get('h1').should('have.text', 'Thank You for your Message!')
})

Then('I should be presented with a unsuccessful contact us submission message', ()=>{
    cy.get('body').contains("Error: Invalid email address")
})