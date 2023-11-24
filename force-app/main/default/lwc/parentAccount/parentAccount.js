import { LightningElement } from 'lwc';

export default class ParentAccount extends LightningElement {
    searchDetail = [];

    handleAccount(event) {
        this.searchDetail = [];
        alert('see the magic, I called from Child');
        alert(event.detail);

        try {
            event.detail.forEach(x => {
                var accData = {
                    id:x.Id,
                    name:x.Name

                }
                this.searchDetail.push(accData);
            });
        }catch(e) {
            console.log(e);
        }
    }

}