package com.example.api.controller;

import com.example.api.annotation.DisableBaseResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

@RestController
@RequestMapping("/api/upload")
public class FileUploadController {

    @Value("${file.upload-dir}")
    private String uploadDir;

    @PostMapping("/image")
    @DisableBaseResponse  // 禁用全局响应包装
    public ResponseEntity<Map<String, Object>> uploadImage(@RequestParam("file") MultipartFile file) {
        // 检查空文件
        if (file == null || file.isEmpty()) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(Collections.singletonMap("error", "文件不能为空"));
        }

        // 验证文件类型
        String contentType = file.getContentType();
        if (!isValidImageType(contentType)) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(Collections.singletonMap("error", "不支持的文件类型: " + contentType));
        }

        // 生成唯一文件名
        String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();

        // 确保目录存在
        File uploadDirFile = new File(uploadDir);
        if (!uploadDirFile.exists() && !uploadDirFile.mkdirs()) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(Collections.singletonMap("error", "无法创建上传目录"));
        }

        // 保存文件
        try {
            file.transferTo(new File(uploadDirFile, fileName));
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(Collections.singletonMap("error", "文件保存失败: " + e.getMessage()));
        }

        // 返回简洁结果
        return ResponseEntity.ok()
                .body(Collections.singletonMap("fileName", fileName));
    }

    private boolean isValidImageType(String contentType) {
        return contentType != null && contentType.startsWith("image/");
    }
}