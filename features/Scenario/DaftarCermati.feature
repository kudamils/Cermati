Feature: Registration Cermati

  @valid-registration
  Scenario:  Daftar ke Cermati.com
    Given I navigate to Cermati register homepage
    When I fill using valid email
    And I fill valid password
    And I fill confirm passowrd
    And I fill Nama Depan
    And I fill Nama Belakang
    And I fill Nomor Telepon
    And I fill Kabupaten
    When I click Daftar Akun button
    Then The results for the search will be displayed