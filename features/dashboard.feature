
Feature: Dashboard

  @dashboard
  Scenario Outline: Create post button
    Given I open the login page "<env>"
    When I login with username "<username>" and password "<password>"
    And je clique sur le bouton add post
    Then je suis redirige vers la page de creation de post
    
    @int
    Examples:
      | env                                                | username              | password     |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration   | testeur_qa   |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration_2 | testeur_qa_2 |
