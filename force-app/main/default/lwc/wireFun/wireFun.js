import { LightningElement, api, wire } from 'lwc';

import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails'


export default class WireFun extends LightningElement {
    error;
    actlist;
    accountName;

    handleonchangeaccountname (event) {
        this.accountName = event.target.value;
    }

    @wire(getAccount, {actName: '$accountName'})
    accountfun({error, data}) {
        if(data) {
            this.actlist = data;
            this.error = 'undefined';
        }
        else if(error) {
            this.error = error;
            this.error = 'undefined';
        }
    }

}