package model.entity;
import java.io.Serializable;

public class UserBean implements Serializable {
    /**
     * ユーザーID
     */
	private String userId;
	
	/**
	 * 氏名
	 */
	private String name;
	
	/**
	 * 管理者
	 */
	private String authorityNo;
	
	public String getAuthority() {
		return authorityNo;
	}

	public void setAuthority(String authorityNo) {
		this.authorityNo = authorityNo;
	}

	public UserBean() {
		
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
