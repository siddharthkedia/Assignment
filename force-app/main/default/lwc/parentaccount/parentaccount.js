import { LightningElement } from 'lwc';
export default class Parentaccount extends LightningElement {
    searchres=[];
    handleresult(event){
        alert('Yes...I called from child event');
        alert(event.detail);
        this.searchres = [];
        event.detail.forEach(x => {
                var accData = {
                    id:x.Id,
                    name:x.Name
                }
                this.searchres.push(accData)
        }
        );
    }
}