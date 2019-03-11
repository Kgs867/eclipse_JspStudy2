package hewon;

//DB에 접속해서 원하는 데이터를 검색,입력,수정,삭제시키기위해서
//필요로하는 메서드를 선언->호출 할 수 있도록 설계된 클래스
//1.DBConnectionMgr--->MemberDAO의 메서드 호출(has a 관계)

import java.sql.*;//DB
import java.util.*;//자료구조->Vector,ArrayList,,,

public class MemberDAO {
    //1.DBConnectionMgr객체를 선언(멤버변수)
	private DBConnectionMgr pool=null;  //getConnection(),freeConnection()
	
	//공통으로 접속할 경우 필요한 멤버변수
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";//실행시킬 SQL구문 저장
	
	//2.생성자를 통해서 객체를 얻어오는 구문
	public MemberDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB연결 실패->"+e);//e.toString()
		}
	}//생성자
	//1)요구분석에 따른 회원로그인을 체크인 해주는 메서드 필요->
	//형식) public 반환형 메서드명(자료형(String) 2개)
	//select id,passwd from member where  id='nup' and passwd='1234';
	public boolean loginCheck(String id,String passwd) {
		//1.DB연결
		boolean check=false;
		//2.실행시킬 SQL->반환값 처리
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);
			sql="select id,passwd from member where  id=? and passwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			check=rs.next();//데이터가 존재->true, 없으면 ->false
		}catch(Exception e) {
			System.out.println("logCheck()실행 에러유발->"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return check;
		//3.DB연결해제
	}
	
	//2)회원가입->중복 id를 체크인 해주는 메서드가 필요
	
	//3)우편번호->우편번호를 검색->자동으로 입력
	
	//4)회원가입
	
	//5)회원수정->특정 회원 찾기
	
	//6)찾은 데이터를 수정
	
	//7)회원 탈퇴
}







