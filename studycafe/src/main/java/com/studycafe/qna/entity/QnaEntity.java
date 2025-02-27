package com.studycafe.qna.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;

import com.studycafe.member.entity.Role;
import com.studycafe.study.entity.StudyEntity;
import com.studycafe.team.entity.TeamEntity;

import lombok.Data;

@Entity
@Data
public class QnaEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long qnaNum; // 질문 답변 번호
	
	@NotNull
	@Column(length = 20)
	private String qnaWriter; // 질문 답변 작성자
	
	@NotNull
	@Column(columnDefinition = "TEXT")
	private String qnaContent; // 질문 답변 내용

	@NotNull
	@Column(length = 50)
	private String qnaTitle; // 질문 답변 글 제목
	
	@Column(length = 500)
	private String qnaPath; // 질문 답변 이미지 경로
	
	@CreationTimestamp
	private Timestamp qnaDate;  // 질문 답변 작성일



	
	
}
