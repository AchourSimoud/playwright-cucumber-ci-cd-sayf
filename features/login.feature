Feature: Login

  @valid
  Scenario Outline: Successful login
    Given I open the login page "<env>"
    When I login with username "<username>" and password "<password>"
    Then I should be redirected to the dashboard

    @int
    Examples:
      | env                                                | username              | password     |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration   | testeur_qa   |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration_2 | testeur_qa_2 |

    @recette
    Examples:
      | env                                                | username          | password     |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette   | testeur_qa_3 |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette_2 | testeur_qa_4 |

  @invalid
  Scenario: Failed login with wrong credentials
    Given I open the login page "<env>"
    When I login with username "<username>" and password "<password>"
    Then I should see an error message

    @int
    Examples:
      | env                                                | username                   | password          |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration        | testeur_qa_faux   |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration_faux   | testeur_qa        |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration_2      | testeur_qa_2_faux |
      | http://192.168.1.95:9091/admin/login/?next=/admin/ | testeur_integration_2_faux | testeur_qa_2      |

    @recette
    Examples:
      | env                                                | username               | password          |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette        | testeur_qa_3_faux |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette_faux   | testeur_qa_3      |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette_2      | testeur_qa_4_faux |
      | http://192.168.1.95:9092/admin/login/?next=/admin/ | testeur_recette_2_faux | testeur_qa_4      |
