Feature: Modificar una mascota existente Mediante un put al path /v2/pet.

  Background: Reutilizables
    * url "https://petstore.swagger.io"
    * path "/v2/pet"
    * def PutPet1 = read('classpath:PetStore/request/PutPet.json')
    * def PetPutResponse = read('classpath:PetStore/response/PetPut.json')

  Scenario: Put a Pet
    Given request PutPet1
    * print PutPet1
    When method PUT
    #Status code esperado
    Then status 200
    #Schema del Response
    And match response == PetPutResponse
    * print response