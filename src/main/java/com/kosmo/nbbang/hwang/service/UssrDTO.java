package com.kosmo.nbbang.hwang.service;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/*
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
*/
public class UssrDTO {
	private String ussrno;
	private String ussrtitle;
	private String ussrcontent;
	private java.sql.Date ussrpostdate;
	private String ussroriginfilenames;
	private String ussrrealfilenames;
	private String ussrcategoryname;
	private String navcategory;
	private String email;
	
	//닉네임뿌려주기용
	private String nickname;
	
	//좋아요 수 저장용
	private String likeCount;
	
	//각 글에 따른 댓글 총수 저장용
	private String commentCount;
	
	//no에 따른 모든 한줄 댓글 목록 저장용
	//마이바티스의 ResultMap 태그의 collection태그 적용용
	List<UssrCommentDTO> comments;

	@Override
	public String toString() {
		return "UssrDTO [ussrno=" + ussrno + ", ussrtitle=" + ussrtitle + ", ussrcontent=" + ussrcontent
				+ ", ussrpostdate=" + ussrpostdate + ", ussroriginfilenames=" + ussroriginfilenames
				+ ", ussrrealfilenames=" + ussrrealfilenames + ", ussrcategoryname=" + ussrcategoryname
				+ ", navcategory=" + navcategory + ", email=" + email + ", nickname=" + nickname + ", likeCount=" + likeCount
				+ ", commentCount=" + commentCount + ", comments=" + comments + "]";
	}

	public String getUssrno() {
		return ussrno;
	}

	public void setUssrno(String ussrno) {
		this.ussrno = ussrno;
	}

	public String getUssrtitle() {
		return ussrtitle;
	}

	public void setUssrtitle(String ussrtitle) {
		this.ussrtitle = ussrtitle;
	}

	public String getUssrcontent() {
		return ussrcontent;
	}

	public void setUssrcontent(String ussrcontent) {
		this.ussrcontent = ussrcontent;
	}

	public java.sql.Date getUssrpostdate() {
		return ussrpostdate;
	}

	public void setUssrpostdate(java.sql.Date ussrpostdate) {
		this.ussrpostdate = ussrpostdate;
	}

	public String getUssroriginfilenames() {
		return ussroriginfilenames;
	}

	public void setUssroriginfilenames(String ussroriginfilenames) {
		this.ussroriginfilenames = ussroriginfilenames;
	}

	public String getUssrrealfilenames() {
		return ussrrealfilenames;
	}

	public void setUssrrealfilenames(String ussrrealfilenames) {
		this.ussrrealfilenames = ussrrealfilenames;
	}

	public String getUssrcategoryname() {
		return ussrcategoryname;
	}

	public void setUssrcategoryname(String ussrcategoryname) {
		this.ussrcategoryname = ussrcategoryname;
	}

	public String getNavcategory() {
		return navcategory;
	}

	public void setNavcategory(String navcategory) {
		this.navcategory = navcategory;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(String likeCount) {
		this.likeCount = likeCount;
	}

	public String getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}

	public List<UssrCommentDTO> getComments() {
		return comments;
	}

	public void setComments(List<UssrCommentDTO> comments) {
		this.comments = comments;
	}
	
	
}
