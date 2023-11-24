import { LightningElement } from 'lwc';

export default class Firstcomponent extends LightningElement {
    Name = "amit";
    isActive = false;

    handleOnChange(event) {
        this.Name = event.target.value;
    }

    handleOnChange1(event) {
        this.isActive = event.target.checked;
    }

}