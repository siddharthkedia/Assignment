import { LightningElement } from 'lwc';
import getAllAccounts from '@salesforce/apex/SearchAccount.getAllAccounts';
export default class Searchaccounts extends LightningElement {
    accountname;
    accountphone;
    billingcity;
    billingstreet;
    billingstate;
    billingzipcode;
    handleonchangename(event){
        this.accountname = event.target.value;
    }
    handleonchangephone(event){
        this.accountphone = event.target.value;
    }
    handleonchangecity(event){
        this.billingcity = event.target.value;
    }
    handleonchangestreet(event){
        this.billingstreet = event.target.value;
    }
    handleonchangestate(event){
        this.billingstate = event.target.value;
    }
    handleonchangezipcode(event){
        this.billingzipcode = event.target.value;
    }
    searchaccount(event){
        alert(this.accountname);
        getAllAccounts({actName:this.accountName}).
        then(result=>{this.dispatchEvent(new CustomEvent('mycustevt',{detail:result}))}).

        catch(error=>{console.log(error)});

    }
}