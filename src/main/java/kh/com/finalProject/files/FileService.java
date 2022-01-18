package kh.com.finalProject.files;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileService {

	@Autowired
	private FileDAO dao;

	public FileService() {
		System.out.println("FileService 인스턴스 생성");
	}

	// 파일 등록
	public int insertFile(FileDTO dto) throws Exception {
		return dao.insertFile(dto);
	}

	// 파일 리스트 불러오기
	public List<FileDTO> selectAll(int board_seq) throws Exception {
		return dao.selectAll(board_seq);
	}
}
