package model.entity;
import java.io.Serializable;

public class EventBean implements Serializable {
    /**
     * 社内イベントコード
     */
	private String eventCode;
    
    /**
     * 社内イベント名
     */
	private String eventName;
	
	/**
	 * 開催日時
	 */
	private String eventDate;
	
	/**
	 * 開催場所
	 */
	private String eventPlace;
	
	/**
	 * 開催者
	 */
	private String organizer;
	
	/**
	 * 自由記述
	 */
	private String selfIntroduction;
	
	public EventBean() {
		
	}

	public String getEventCode() {
		return eventCode;
	}

	public void setEventCode(String eventCode) {
		this.eventCode = eventCode;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventPlace() {
		return eventPlace;
	}

	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}
	
	
}