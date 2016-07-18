package beans;

public class Person {
	static double money;
	String firstName = null;
	String lastName = null;
	String bDay = null;
	String Proffesion = null;
	
	public Person (String firstName, String lastName, String bDay, String Proffesion) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.bDay = bDay;
		this.Proffesion = Proffesion;
	}
	
	public void setName (String firstName, String lastName){
		this.firstName = firstName;
		this.lastName = lastName;
	}	
	
	public String getFirstName (){
		return firstName;
	}
	
	public String getLastName (){
		return lastName;
	}
	
	
	public void setAge(String bDay){
		this.bDay = bDay;
	}
	
	public void setProffession(String proffesion){
		this.Proffesion = proffesion;
	}
	
	public String getProffesion(){
		return Proffesion;
	}
}
