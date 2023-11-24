public class OppEsclatedClass {
    
    public static void oppUpdate(List<Opportunity> l1, List<Opportunity> l2) {
        
        for(integer i=0; i<l1.size(); i++) {
            
            if(l1[i].StageName == 'Closed Won' && l2[i].StageName == 'Closed Lost') {
                
                l2[i].NextStep = 'Esclate to Maneger';
            }
        }
        
    }

}