@restResource (urlMapping='/myAccount/*')
global class FirstApi {
	@httpGet
	global static List<Account> getAccount(){
		List<Account> data;
		data=[select id, name from Account];
		return data;
	}
	@httpPost
    global static void insertAccount(String actname){
        Account act = new Account();
        act.name = actname;
        insert act;
    }
    @httpDelete
    global static void deleteAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String actId = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        Account act = [select id, name from account where id=:actId];
        delete act;
    }
    @httpPut
    global static void updateAccount(string rid, string nm){
        Account ac = [select id , name from Account where id=:rid];
        ac.name=nm;
        update ac;
    }
    public String getPostCalloutResponseContents() {

    // Instantiate a new Http object
    Http h = new Http();

    // Instantiate a new HTTP request
    // Specify request properties such as the endpoint, the POST method, etc. 
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://herofincorp.udemy.com/course/aws-certified-developer-associate-dva-c01/learn/lecture/11851550?learning_path_id=1284908#overview');
    req.setMethod('POST');
    req.setHeader('Content-Type', 'application/json');
    req.setBody('{Your_JSON_Content}');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
    return res.getBody();
  }
}