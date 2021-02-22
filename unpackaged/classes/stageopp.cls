public class stageopp {
    	public String state1 {get;set;}
		
    	public List<SelectOption> getones()
    	{	
            List<SelectOption> options = new List<SelectOption>();        
        	options.add(new SelectOption('Qualification','Qualification'));
        	options.add(new SelectOption('Closed Won','Closed Won'));
        	options.add(new SelectOption('Closed Lost','Closed Lost'));
         	options.add(new SelectOption('Negotiation','Negotiation'));
        	return options;   
        }
    	
    	public List<Opportunity> getOpps() {
    		List<Opportunity> result1 = [SELECT name, account.name, closedate, probability 
                                         from opportunity 
                                     	 where stagename = : state1 and ownerid = :UserInfo.getUserId() ];
    		return result1;

		}
    	public PageReference filter(){
        	return null;
    	}
   
    }