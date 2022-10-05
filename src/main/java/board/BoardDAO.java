package board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

@Repository("boarddao")
public class BoardDAO {
	@Autowired
	SqlSession session;
	
	public int insertBoard(BoardDTO dto) {
		session.insert("insertboardHis",dto);
		return session.insert("insertboard", dto);
	}

	public int getCount() {
		return session.selectOne("board.boardcount");
	}
	
	public List<BoardDTO> pagingList(int[] limit){
		return session.selectList("paginglst", limit);
	}

	public int updateSeq(int seq) {
		int rowsCount = session.update("updateseq",seq);
		return rowsCount;
	}

	public BoardDTO getBoardSeqLst(int seq) {
		
		return session.selectOne("selectboardseqlst", seq);
	}

	public int deleteBoard(int seq) {
		return session.delete("deleteSeq", seq);
	}

	public int updateBoard(BoardDTO dto) {
		return session.update("updatingBoard", dto);
	}

	public int getTitleCount() {
		return session.selectOne("board.boardTitlecount");
	}

	public List<BoardDTO> pagingTitleList(int[] limit) {
		return session.selectList("pagingTitlelst", limit);
	}

	public int getWriterCount() {
		return session.selectOne("board.boardWritercount");
	}

	public List<BoardDTO> pagingWriterList(int[] limit) {
		return session.selectList("pagingWriterlst", limit);
	}

	public List<BoardDTO> pagingList2(int[] limit, String searchVal) {
		Map paramMap = new HashMap();
		paramMap.put("param1", limit);
		paramMap.put("param2", searchVal);
		return session.selectList("paginglst2", paramMap);
	}

	public int getTotalBoard2(String searchVal) {
		return session.selectOne("board.boardcount2", searchVal);
		
	}

	public int getTotalTitleBoard2(String searchVal) {
		return session.selectOne("board.boardTitlecount2", searchVal);
	}
	
	public int getTotalWriterBoard2(String searchVal) {
		return session.selectOne("board.boardWritercount2", searchVal);
	}

	public List<BoardDTO> pagingTitleList2(int[] is, String searchVal) {
		Map paramMap = new HashMap();
		paramMap.put("param1", is);
		paramMap.put("param2", searchVal);
		return session.selectList("pagingTitlelst2",paramMap);
	}

	public List<BoardDTO> pagingWriterlist2(int[] is, String searchVal) {
		Map paramMap = new HashMap();
		paramMap.put("param1", is);
		paramMap.put("param2", searchVal);
		return session.selectList("pagingWriterlst2",paramMap);
	}
	
}
