public class ConsumeRest {
    public void consumeWebServices() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setendPoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        //set the body as a json object
        request.setBody('{"name" : "Tiger"}');
        HttpResponse response = http.send(request);
        //parse the JSON response
        if(response.getStatusCode() != 201) {
            System.debug('The Status code returned was not expected: ' + response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        } 
    }  
}