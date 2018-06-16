package Beanclasses;

public class RegistrationBean {
	public int ID;
	public String Name,Email	,Password,	ConfirmPassword,	Gender	,DOB	,State	,City,	Address,	PinCode,	BloodGroup, Weight,	ContactNumber,	PreviousBloodDonationDate,	Option_for_Donation,	PreferredReminderService;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email; 
		
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getConfirmPassword() {
		return ConfirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPinCode() {
		return PinCode;
	}
	public void setPinCode(String pinCode) {
		PinCode = pinCode;
	}
	public String getBloodGroup() {
		return BloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		BloodGroup = bloodGroup;
	}
	public String getWeight() {
		return Weight;
	}
	public void setWeight(String weight) {
		Weight = weight;
	}
	public String getContactNumber() {
		return ContactNumber;
	}
	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}
	public String getPreviousBloodDonationDate() {
		return PreviousBloodDonationDate;
	}
	public void setPreviousBloodDonationDate(String previousBloodDonationDate) {
		PreviousBloodDonationDate = previousBloodDonationDate;
	}
	public String getOption_for_Donation() {
		return Option_for_Donation;
	}
	public void setOption_for_Donation(String option_for_Donation) {
		Option_for_Donation = option_for_Donation;
	}
	public String getPreferredReminderService() {
		return PreferredReminderService;
	}
	public void setPreferredReminderService(String preferredReminderService) {
		PreferredReminderService = preferredReminderService;
	}
	
}
