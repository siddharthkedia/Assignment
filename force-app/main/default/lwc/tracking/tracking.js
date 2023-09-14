import { LightningElement } from 'lwc';

export default class Tracking extends LightningElement {
    test="Siddharth";
    handleonchange(event){
        this.test = event.target.value;
    }
}