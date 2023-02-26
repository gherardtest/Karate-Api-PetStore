Feature: Realizar un get /v2/pet{petId} para obtener una mascota existente

  Background: Reutilizables
    * url "https://petstore.swagger.io"
    * def AddPet1 = read('classpath:PetStore/request/AddPet.json')
    * def PetAddResponse = read('classpath:PetStore/response/PetAdd.json')

  Scenario Outline: Get a pet
    Given  path "/v2/pet/<petId>"
    When method GET
    #Status code esperado
    Then status 200
    #Schema del Response
    And match response == PetAddResponse
    * print response

    Examples:
      | petId   |
      |    1    |




