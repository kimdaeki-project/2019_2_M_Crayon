package com.nuri.s5.util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {
	
	// file Delete
	public boolean fileDelete(String realPath, String fileName) throws Exception{
		File file = new File(realPath, fileName);
		
		boolean check = false;
		if(file.exists()) {
			check = file.delete();
		}
		return check;
	}
	
	// file insert
	public String fileSave(String realPath, MultipartFile multipartFile) throws Exception{
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		// UUID 사용
		String fileName = UUID.randomUUID().toString();
		fileName = fileName+"_"+multipartFile.getOriginalFilename();
		
		file = new File(realPath, fileName);
		multipartFile.transferTo(file);
		
		return fileName;
	}
}
