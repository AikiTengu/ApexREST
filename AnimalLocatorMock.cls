@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
	    response.setBody('{"animals": {"id":0, "name": "majestic badger"}}');
      ///, "id": 1, "name": "fluffy bunny", "id": 2, "name": "scary bear", "id": 3, "name": "chicken", "id": 4, "name": "mighty moose"}}');
        response.setStatusCode(200);
        return response;
    }
}
