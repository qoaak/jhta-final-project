package kr.co.hangsho.customers.vo;

public class InfoForm {

	private String name;
	private String password;
	private String passwordCheck;
	private String phoneNumber;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordCheck() {
		return passwordCheck;
	}
	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Override
	public String toString() {
		return "InfoForm [name=" + name + ", password=" + password + ", passwordCheck=" + passwordCheck
				+ ", phoneNumber=" + phoneNumber + "]";
	}
	
	
}
