package Beanclasses;

public class NewsBean {
	public int ID;
	public String Description	,EventName,	EventPicture,	EventDate;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getEventName() {
		return EventName;
	}
	public void setEventName(String eventName) {
		EventName = eventName;
	}
	public String getEventPicture() {
		return EventPicture;
	}
	public void setEventPicture(String eventPicture) {
		EventPicture = eventPicture;
	}
	public String getEventDate() {
		return EventDate;
	}
	public void setEventDate(String eventDate) {
		EventDate = eventDate;
	}
}
