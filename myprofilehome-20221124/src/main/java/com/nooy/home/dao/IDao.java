package com.nooy.home.dao;

import java.util.List;

import com.nooy.home.dto.Criteria;
import com.nooy.home.dto.MemberDto;
import com.nooy.home.dto.QBoardDto;
import com.nooy.home.dto.PlaceDto;

public interface IDao {
	
	//회원관리
	public int memberJoin(String mid, String mpw, String mname, String memail, String mtel);//회원 가입 insert
	public int checkId(String mid);//아이디 존재여부 확인 select
	public int checkIdAndPW(String mid, String mpw);//아이디와 비밀번호의 존재 및 일치 여부 select
	public MemberDto getMemberInfo(String mid);//아이디로 조회하여 회원정보 가져오기 select
	public void memberModify(String mid, String mpw, String mname, String memail);//회원 정보 수정 update
	
	//질문게시판
	public void writeQuestion(String qid, String qname, String qcontent, String qemail);//질문하기 insert
	public List<QBoardDto> questionList(Criteria cri);//질문게시판 리스트 가져오기 select
	public QBoardDto questionView(String qnum);//선택한 글 번호의 정보 가져오기 select
	public void questionModify(String qnum, String qname, String qcontent, String qemail);//해당 글번호로 조회하여 질문 수정 update
	public void questionDelete(String qnum);//글 삭제 delete
	public int boardAllCount();//게시판 총 글의 개수 가져오기
	
	//place
	public void placeInsert(String bid, String bregion, String baddress, String bprice, String brule, String bemail);
	public List<PlaceDto> bookList(Criteria cri);
	public void placeDelete(String bnum);//글 삭제 delete

}
