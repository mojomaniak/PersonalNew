global class Customer {
	public String FirstName {get; set;}
	public String LastName {get;set;}
	public String Email {get;set;}
	public Date DateOfBirth {get; set;}

	public Customer (String fName, String lName, String email){
		this.FirstName = fName;
		this.LastName = lName;
		this.Email = email;
	}
	
	public static List<Customer__c> Add(List<Customer> custs){
		List<Customer__c> newCusts = new List<Customer__c>();
		Customer__c cust = null;

		if(null != custs && custs.size() > 0){
			for(Customer c : custs){
				cust = new Customer__c();
				cust.FirstName__c = !String.isBlank(c.FirstName) ? c.FirstName : '';
				cust.LastName__c = !String.isBlank(c.LastName) ? c.LastName : '';
				cust.Email__c = !String.isBlank(c.Email) ? c.Email : '';

				newCusts.add(cust);
			}

			try{
				if(null != newCusts && newCusts.size() > 0){					
					insert newCusts;
				}
			}
			catch(Exception e){
				System.debug('***** ' + e.getMessage() + ' *****');
			}
		}

		return newCusts;
	}
}