public class Collection {
    
    Public void GetNames() {
        
        Map<String, String> name = new Map<String,String>();
        
        name.put('m1' , 'Shubham');
        name.put('m2' , 'Akash');
      	name.put('m3', 'Sarvesh');
      
        
        
        Set<String> a = name.keySet();
        
        for(String nam: a) {
            System.debug('sets are ' + name.get(nam));
        }
        
        List<String> val = name.values();
        
        for(String b : val) {
            System.debug('values are ' + b);
        }
         
    }
}