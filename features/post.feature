Feature: Post

  Background:

  @post
  Scenario Outline: Create post button
    Given I open the login page "<env>"
    When I login with username "<username>" and password "<password>"
    
    And je clique sur le bouton add post
    Then je suis redirige vers la page de creation de post
    And je creer un post avec "<title>" et "<content>" et je clique sur le bouton save
    Then je vois mon super post dans la liste des posts

    @int
    Examples:
      | env                                                | username            | password     | title               | content               |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration | testeur_qa   | titre integration 1 | content integration 1 |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration | testeur_qa_2 | title recette 1     | content recette 2     |
