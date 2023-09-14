global class SoapExample {
    webService static account getAccount(string actid){
        account act = [select id, name from account where id =:actid];
        return act;
    }
}