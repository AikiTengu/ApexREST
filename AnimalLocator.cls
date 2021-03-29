public class AnimalLocator {
    public static String getAnimalNameById(Integer id){
 		string animalName = '';
        Object animal;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
    	// parse the JSON response
        if (response.getStatusCode() == 200) {
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            animal = result.get('animal');
        }
        if (animal != NULL  ) {
            Map<String, Object> result1 = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(animal));
            animalName =(String) result1.get('name');
        }
        return animalName;
}
}

