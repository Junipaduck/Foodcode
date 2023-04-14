package com.itwillbs.foodcode.vo;

// 페이징 처리를 위한 VO 클래스 
public class PageVO {
	private Integer pageNum;
	private int totalCount; // 전체 글의 갯수
	private int totalPage; // 전체 페이지의 수 
	private int perPage; // 페이지당 글의 수 
	private int totalBlock; // 전체 블럭의 수 
	private int perBlock; // 페이지당 블럭의 수 
	private int curBlock; // 현재 블럭 번호 
	private String kind; // 게시판 테이블의 컬럼 
	private String search; // 검색어 
	private int startNum; // 페이지 시작번호 
	private int lastNum; // 페이지 끝번호 
	private String lastCheck; // 마지막 블럭 조사 
	private int startRow; // 첫 시작 행 
	
	public PageVO() {
		// TODO Auto-generated constructor stub
	}

	public PageVO(Integer pageNum, int totalCount, int totalPage, int perPage, int totalBlock, int perBlock,
			int curBlock, String kind, String search, int startNum, int lastNum, String lastCheck, int startRow) {
		super();
		this.pageNum = pageNum;
		this.totalCount = totalCount;
		this.totalPage = totalPage;
		this.perPage = perPage;
		this.totalBlock = totalBlock;
		this.perBlock = perBlock;
		this.curBlock = curBlock;
		this.kind = kind;
		this.search = search;
		this.startNum = startNum;
		this.lastNum = lastNum;
		this.lastCheck = lastCheck;
		this.startRow = startRow;
	}

	public Integer getPageNum() {
		if(this.pageNum == null || this.pageNum < 1) {
			this.pageNum = 1;
		}
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}

	public int getPerBlock() {
		return perBlock;
	}

	public void setPerBlock(int perBlock) {
		this.perBlock = perBlock;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search == null) {
			this.search = "";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getLastNum() {
		return lastNum;
	}

	public void setLastNum(int lastNum) {
		this.lastNum = lastNum;
	}

	public String getLastCheck() {
		return lastCheck;
	}

	public void setLastCheck(String lastCheck) {
		this.lastCheck = lastCheck;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	@Override
	public String toString() {
		return "PageVO [pageNum=" + pageNum + ", totalCount=" + totalCount + ", totalPage=" + totalPage + ", perPage="
				+ perPage + ", totalBlock=" + totalBlock + ", perBlock=" + perBlock + ", curBlock=" + curBlock
				+ ", kind=" + kind + ", search=" + search + ", startNum=" + startNum + ", lastNum=" + lastNum
				+ ", lastCheck=" + lastCheck + ", startRow=" + startRow + "]";
	}

	public void makeRow() {
		this.startRow = (this.getPageNum() - 1) * this.getPerPage();
	}
	
	public void makeNum(Long totalCount) {
		Long totalPage = totalCount / this.getPerPage();
		
		// 전체 페이지 갯수 구하기 
		if(totalCount % this.getPerPage() != 0) {
			totalPage++;
		}
		
		// 총 페이징 갯수 구하기 
		Long perBlock = 5L;
		Long totalBlock = totalPage / perBlock;
		if(totalPage % perBlock != 0) {
			totalBlock++;
		}
		
		// pageNum으로 현재 블럭 번호 구하기 
		Long curBlock = this.getPageNum() / perBlock;
		if(this.getPageNum() % perBlock != 0) {
			curBlock++;
		}
		
		// curBlock으로 시작번호, 끝번호 구하기 
		startNum = (int) ((curBlock-1)*perBlock+1);
		lastNum = (int) (curBlock * perBlock);
	}
}



























































