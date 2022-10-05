package board;

import java.util.List;

public interface BoardService {
	public int registerBoard(BoardDTO dto) ;
	public int getTotalBoard();
	public List<BoardDTO> paginglist(int[] limit);
	public List<BoardDTO> pagingTitlelist(int[] limit);
	public int updateSeq(int seq);
	public BoardDTO getBoardSeqLst(int seq);
	public int deleteBoard(int seq);
	public int updateBoard(BoardDTO dto);
	public int getTotalTitleBoard();
	public int getTotalWriterBoard();
	public List<BoardDTO> pagingWriterlist(int[] limit);
	public List<BoardDTO> paginglist2(int[] limit, String searchVal);
	public int getTotalBoard2(String searchVal);
	public List<BoardDTO> pagingTitlelist2(int[] is, String searchVal);
	public int getTotalTitleBoard2(String searchVal);
	public List<BoardDTO> pagingWriterlist2(int[] is, String searchVal);
	public int getTotalWriterBoard2(String searchVal);
}
