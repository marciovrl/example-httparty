#language:en

@putPosts
Feature: Edit item Post

    Background: Use endpoint posts
        Given use endpoint posts

    Scenario: Edit value title of item Post
        When edit value title of item Post for "New Testing"
        Then I see title value edited with "New Testing"

    Scenario: Edit value body of item Post
        When edit value body of item Post for "New example testing API with Ruby"
        Then I see body value edited with "New example testing API with Ruby"