package dto_Bank;

public class Bank_dto {

	private String firstname,lastname,email,gender,address;
	private int age,pin;
	private long phno,accno;
	private double balance;
	private String typeOfAccount;
	public Bank_dto(String firstname, String lastname, String email, String gender, String address, int age, int pin,
			long phno, long accno, double balance,String typeOfAccount) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.age = age;
		this.pin = pin;
		this.phno = phno;
		this.accno = accno;
		this.balance = balance;
		this.typeOfAccount=typeOfAccount;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public long getAccno() {
		return accno;
	}
	public void setAccno(long accno) {
		this.accno = accno;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	public String getTypeOfAccount() {
		return typeOfAccount;
	}
	public void setTypeOfAccount(String typeOfAccount) {
		this.typeOfAccount = typeOfAccount;
	}
	@Override
	public String toString() {
		return "Bank_dto [firstname=" + firstname + ", lastname=" + lastname + ", email=" + email + ", gender=" + gender
				+ ", address=" + address + ", age=" + age + ", pin=" + pin + ", phno=" + phno + ", accno=" + accno
				+ ", balance=" + balance + "]";
	}
	
	

	
	
	

}
