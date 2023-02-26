Feature: Agregar una mascota realizando un post al path /v2/pet.

  Background: Reutilizables
    * url "https://petstore.swagger.io"
    * path "/v2/pet"
    * def AddPet1 = read('classpath:PetStore/request/AddPet.json')
    * def PetAddResponse = read('classpath:PetStore/response/PetAdd.json')

  Scenario: Post a Pet
    Given request AddPet1
    * print AddPet1
    When method POST
    #Status code esperado
    Then status 200
    #Schema del Response
    And match response == PetAddResponse
    * print response