import { LightningElement } from 'lwc';

export default class ccmp extends LightningElement {

    constructor() {
        super();
        console.log("child Constructor is called");
    }

    connectedCallback() {
        console.log("Child connected call back called");
    }

    renderedCallback() {
        console.log("Child rendered Call back called");
    }

    disconnectedCallback() {
        console.log("Child disconnected Call back called");
    }

    errorCallback() {
        console.log("Child error Callback called");
    }

}