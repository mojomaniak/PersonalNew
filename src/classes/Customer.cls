global class Customer {
	public String FirstName {get; set;}
	public String LastName {get;set;}
	public String Email {get;set;}
	public Date DateOfBirth {get; set;}

	public Customer (String fName, String lName, String email){
		FirstName = fName;
		LastName = lName;
		Email = email;
	}
}