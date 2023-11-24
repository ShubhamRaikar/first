import { LightningElement } from 'lwc';

export default class LwcLifeCycle extends LightningElement {

    constructor()
    {
        super();
        console.log("Parent Constructor is called");
    }
 
    connectedCallback()
    {   
        console.log("Parent Connected Call Back Called");
    }
 
    renderedCallback()
    {
        console.log("Parent rendered Call Back is Called")
    }
 
    disconnectedCallback()
    {
        console.log("Parent diconnected Call Back called");
    }
 
    errorCallback()
    {
       console.log("Parent error Call back called") 
    }
}