package hewon;

//DB�� �����ؼ� ���ϴ� �����͸� �˻�,�Է�,����,������Ű�����ؼ�
//�ʿ���ϴ� �޼��带 ����->ȣ�� �� �� �ֵ��� ����� Ŭ����
//1.DBConnectionMgr--->MemberDAO�� �޼��� ȣ��(has a ����)

import java.sql.*;//DB
import java.util.*;//�ڷᱸ��->Vector,ArrayList,,,

public class MemberDAO {
    //1.DBConnectionMgr��ü�� ����(�������)
	private DBConnectionMgr pool=null;  //getConnection(),freeConnection()
	
	//�������� ������ ��� �ʿ��� �������
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";//�����ų SQL���� ����
	
	//2.�����ڸ� ���ؼ� ��ü�� ������ ����
	public MemberDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB���� ����->"+e);//e.toString()
		}
	}//������
	//1)�䱸�м��� ���� ȸ���α����� üũ�� ���ִ� �޼��� �ʿ�->
	//����) public ��ȯ�� �޼����(�ڷ���(String) 2��)
	//select id,passwd from member where  id='nup' and passwd='1234';
	public boolean loginCheck(String id,String passwd) {
		//1.DB����
		boolean check=false;
		//2.�����ų SQL->��ȯ�� ó��
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);
			sql="select id,passwd from member where  id=? and passwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			check=rs.next();//�����Ͱ� ����->true, ������ ->false
		}catch(Exception e) {
			System.out.println("logCheck()���� ��������->"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return check;
		//3.DB��������
	}
	
	//2)ȸ������->�ߺ� id�� üũ�� ���ִ� �޼��尡 �ʿ�
	
	//3)�����ȣ->�����ȣ�� �˻�->�ڵ����� �Է�
	
	//4)ȸ������
	
	//5)ȸ������->Ư�� ȸ�� ã��
	
	//6)ã�� �����͸� ����
	
	//7)ȸ�� Ż��
}







