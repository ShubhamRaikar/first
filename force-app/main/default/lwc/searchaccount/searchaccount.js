import { LightningElement } from 'lwc';

import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails';

import { myMethod } from './mycommonfun';

export default class Searchaccount extends LightningElement {

    accountName
    accountPhone
    billingstate
    billingstreet
    billingcity
    billingZipCode

    handleonchangeaccountname(event) {
        this.accountName = event.target.value;
        
    }

    handleonchangeaccountPhone(event) {
        this.accountPhone = event.target.value;
        
    }



    handleonchangebillingstate(event) {
        this.billingstate = event.target.value;
        
    }

    handleonchangebillingstreet(event) {
        this.billingstreet = event.target.value;
        
    }

    handleonchangebillingcity(event) {
        this.billingcity = event.target.value;
        
    }

    handleonchangebillingZipCode(event) {
        this.billingZipCode = event.target.value;
        
    }

    
    
    initiateSearch(event) {
        myMethod()
        alert('yes sir i am Search = ' + this.accountName);

        getAccount({actName: this.accountName})
        .then((res)=> {
            this.dispatchEvent(new CustomEvent ('getaccountdata', {detail:res}));
        }).catch((console.error('error')));
    }







}