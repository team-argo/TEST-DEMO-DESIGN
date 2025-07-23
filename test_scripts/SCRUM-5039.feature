# Filename: healthcare_website.feature

@healthcare @website
Feature: Healthcare Services and Support Website
  As a potential patient or user
  I want to navigate the website, find information, and contact the service provider
  So that I can evaluate their services and get the support I need.

  Background:
    Given the user is on the main landing page

  @navigation @smoke
  Scenario Outline: User can navigate to different sections using the header menu
    When the user clicks on the "<Link>" link in the header
    Then the user should be navigated to the "<Section>" section

    Examples:
      | Link     | Section         |
      | Home     | Hero Section    |
      | About    | About Section   |
      | Services | Services Section|
      | Contact  | Contact Section |

  @hero @cta @regression
  Scenario: User can use the hero section call-to-action to navigate to the contact form
    When the user clicks the "Let's connect" button in the hero section
    Then the user should be scrolled to the "Contact Us" section

  @faq @regression
  Scenario: User can reveal an answer in the FAQ section
    Given the user is viewing the "FAQ" section
    When the user clicks on the question "Do you accept my insurance?"
    Then the answer for that question is revealed below it

  @forms @contact @smoke
  Scenario: User can successfully submit an inquiry via the contact form
    Given the user is on the "Contact Us" section
    When the user fills out the contact form with the following details:
      | Field      | Value                                      |
      | First Name | Jane                                       |
      | Last Name  | Doe                                        |
      | Gender     | Female                                     |
      | Reason     | New Inquiry                                |
      | Message    | I would like to ask about your services.   |
    And the user clicks the "Submit" button
    Then the user should see a success message "Thank you for your inquiry. We will be in touch shortly."

  @footer @regression
  Scenario: User can find key information in the website footer
    Given the user has scrolled to the bottom of the page
    When the user inspects the footer section
    Then the footer should contain the main office address "123 Health St, Wellness City, 45678"
    And the footer should contain the phone number "(555) 123-4567"
    And the footer should contain a link to the "Privacy Policy" page
    And the footer should contain a link to the "Terms of Use" page