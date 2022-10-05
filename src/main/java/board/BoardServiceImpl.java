package board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardservice")
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDAO dao;
	
	@Override
	public int registerBoard(BoardDTO dto) {
		return dao.insertBoard(dto);
	}

	@Override
	public int getTotalBoard() {
		return dao.getCount();
	}

	@Override
	public List<BoardDTO> paginglist(int[] limit) {
		return dao.pagingList(limit);
	}

	@Override
	public int updateSeq(int seq) {
		return dao.updateSeq(seq);
	}

	@Override
	public BoardDTO getBoardSeqLst(int seq) {
		return dao.getBoardSeqLst(seq);
	}

	@Override
	public int deleteBoard(int seq) {
		return dao.deleteBoard(seq);
	}

	@Override
	public int updateBoard(BoardDTO dto) {
		return dao.updateBoard(dto);
	}

	@Override
	public int getTotalTitleBoard() {
		return dao.getTitleCount();
	}

	@Override
	public List<BoardDTO> pagingTitlelist(int[] limit) {
		return dao.pagingTitleList(limit);
	}

	@Override
	public int getTotalWriterBoard() {
		return dao.getWriterCount();
	}

	@Override
	public List<BoardDTO> pagingWriterlist(int[] limit) {
		return dao.pagingWriterList(limit);
	}

	@Override
	public List<BoardDTO> paginglist2(int[] limit, String searchVal) {
		return dao.pagingList2(limit,searchVal);
	}

	@Override
	public int getTotalBoard2(String searchVal) {
		return dao.getTotalBoard2(searchVal);
	}

	@Override
	public List<BoardDTO> pagingTitlelist2(int[] is, String searchVal) {
		return dao.pagingTitleList2(is,searchVal);
	}

	@Override
	public int getTotalTitleBoard2(String searchVal) {
		return dao.getTotalTitleBoard2(searchVal);
	}

	@Override
	public List<BoardDTO> pagingWriterlist2(int[] is, String searchVal) {
		return dao.pagingWriterlist2(is,searchVal);
	}

	@Override
	public int getTotalWriterBoard2(String searchVal) {
		return dao.getTotalWriterBoard2(searchVal);
	}
}
