#language:en 

@deletePosts
Feature: Delete item Post

    Background: Use endpoint posts
        Given use endpoint posts

    Scenario: Delete item Post
        When delete id item "/5"
        Then I see delete item
