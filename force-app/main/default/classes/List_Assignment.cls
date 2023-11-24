public class List_Assignment {
    
    public void List_Method() {
        
        List<String> lists = new List<String>();
        
        lists.add('Shubham');
        lists.add('akash');
        lists.add('sarvesh');
        lists.add('suraj');
        lists.add('Shubham');
        
        System.debug('lists with duplicates are : ' + lists);
        
        
        Set<String> Set_element = new Set<String>();
        
        for(String Element : lists) {
            Set_element.add(Element);
        }
        
        System.debug('From Set: ');
        
        for(String sets: Set_element) {
            System.debug(sets);
        }
        
        
        
        
    }

}