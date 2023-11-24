import { LightningElement, api } from 'lwc';

const columns = [
    { label: 'Account Id', fieldName: 'id' },
    { label: 'Account Name', fieldName: 'name' }
    
];

export default class AccountSearchResult extends LightningElement {

    columns = columns;
    @api searchresults = [];

}