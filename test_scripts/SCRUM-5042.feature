# language: en
@regression @website @homepage
Feature: Compassionate, Patient-Centered Care Website Experience

  As a potential patient or visitor of the website,
  I want to be able to navigate the site, understand the company's mission, and view its services,
  So that I can determine if they are the right healthcare provider for me.

Background:
  Given the user is on the homepage

@smoke @navigation
Scenario: User navigates to the services page from the header
  When the user clicks the "Services" link in the header
  Then the user should be on the "Services" page

@smoke @content @hero
Scenario: User views the primary message in the hero banner
  When the page is displayed
  Then the user should see a hero banner
  And the hero banner heading should be "Compassionate, Patient-Centered Care"
  And the hero banner should have a relevant background image

@content @motto
Scenario: User views the company motto below the hero section
  When the user scrolls past the hero section
  Then the user should see the motto "If it doesn't add value, it's a waste."

@cta @interaction
Scenario: User engages with the 'Let's Connect' call to action
  When the user scrolls to the "No Nonsense" section
  And the user clicks the "Let's Connect" button
  Then the user should be redirected to the external connection page

@content @features
Scenario: User views the core service features
  When the user scrolls to the core features section
  Then the user should see a feature card for "Innovation & Technology"
  And the user should see a feature card for "Experienced Medical Team"
  And the user should see a feature card for "Multiple Locations"

@interaction @video
Scenario: User opens the inspirational video link
  When the user scrolls to the quote section
  And the user clicks the inspirational image of hands holding a heart
  Then the user should be taken to the YouTube video in a new tab

@content @values
Scenario: User views the company's core values in the Key Highlights section
  When the user scrolls to the "Key Highlights" section
  Then the user should see a value card for "Compassion"
  And the user should see a value card for "Partnership"
  And the user should see a value card for "Innovation"
  And the user should see a value card for "Teamwork"

@content @story
Scenario: User reads the company story and philosophy
  When the user scrolls to the "Your health. Your voice. Your life." section
  Then the user should see a detailed narrative about the company's philosophy
  And the user should see a relevant image alongside the narrative

@smoke @footer
Scenario: User finds information in the website footer
  When the user scrolls to the bottom of the page
  Then the user should see the footer section
  And the footer should contain contact details
  And the footer should contain site navigation links
  And the footer should contain links to legal policies