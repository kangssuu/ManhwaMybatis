package kr.co.funnyjoy.member.model.vo;

import java.sql.Timestamp;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberAddress;
	private String memberFirstPhone;
	private String memberSecondPhone;
	private String memberLastPhone;
	private String memberEmail;
	private Timestamp memberDate;
	private Timestamp updateDate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	public Member(String memberId, String memberPw, String memberName, String memberAddress, String memberFirstPhone,
			String memberSecondPhone, String memberLastPhone, String memberEmail) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberAddress = memberAddress;
		this.memberFirstPhone = memberFirstPhone;
		this.memberSecondPhone = memberSecondPhone;
		this.memberLastPhone = memberLastPhone;
		this.memberEmail = memberEmail;
	}

	public Member(String memberId, String memberPw) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
	}

	public Member(String memberId, String memberPw, String memberAddress, String memberFirstPhone,
			String memberSecondPhone, String memberLastPhone, String memberEmail) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberAddress = memberAddress;
		this.memberFirstPhone = memberFirstPhone;
		this.memberSecondPhone = memberSecondPhone;
		this.memberLastPhone = memberLastPhone;
		this.memberEmail = memberEmail;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getmemberAddress() {
		return memberAddress;
	}

	public void setMemberAddr(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public String getMemberFirstPhone() {
		return memberFirstPhone;
	}

	public void setMemberFirstPhone(String memberFirstPhone) {
		this.memberFirstPhone = memberFirstPhone;
	}

	public String getMemberSecondPhone() {
		return memberSecondPhone;
	}

	public void setMemberSecondPhone(String memberSecondPhone) {
		this.memberSecondPhone = memberSecondPhone;
	}

	public String getMemberLastPhone() {
		return memberLastPhone;
	}

	public void setMemberLastPhone(String memberLastPhone) {
		this.memberLastPhone = memberLastPhone;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Timestamp getMemberDate() {
		return memberDate;
	}

	public void setMemberDate(Timestamp memberDate) {
		this.memberDate = memberDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "회원 [아이디=" + memberId + ", 비밀번호=" + memberPw + ", 이름=" + memberName
				+ ", 주소=" + memberAddress + ", 식별번호=" + memberFirstPhone + ", 전화번호 앞자리="
				+ memberSecondPhone + ", 전화번호 뒷자리=" + memberLastPhone + ", 이메일=" + memberEmail
				+ ", 가입일=" + memberDate + ", 수정일=" + updateDate + "]";
	}
}

