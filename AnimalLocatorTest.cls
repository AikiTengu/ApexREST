@isTest
public class AnimalLocatorTest {
   @isTest static void testGetAnimalNameById() {
    // Set mock callout class
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    String actualValue = AnimalLocator.getAnimalNameById(0);
    String expectedValue = 'majestic badger';
    System.assertEquals(actualValue, expectedValue);
}
}
