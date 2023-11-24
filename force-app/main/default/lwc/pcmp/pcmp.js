import { LightningElement } from 'lwc';

export default class pcmp extends LightningElement {
    isVisible=true;
    constructor() {
        super();
        console.log("parent Constructor is called");
    }

    connectedCallback() {
        console.log("Parent connected call back called");
    }

    renderedCallback() {
        console.log("rendered Call back called");
    }

    disconnectedCallback() {
        console.log("disconnected Call back called");
    }

    errorCallback() {
        console.log("Parent error Callback called");
    }

    handleClick() {
        if(this.isVisible == true) {
            this.isVisible = false;
        }
        else
        {
            this.isVisible = true;
        }
    }
}