import { LightningElement, api } from 'lwc';
const columns = [
    {   label: 'Account Name', fieldName: 'name'},
];
export default class Accountresult extends LightningElement {
    @api searres = [];
    columns=columns;
}