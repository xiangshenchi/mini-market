package com.example.api.controller;

import com.example.api.model.support.ResponseResult;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RestController
@RequestMapping("/api/upload")
public class FileUploadController {

    // 从配置文件中读取上传目录的绝对路径
    @Value("${file.upload-dir}")
    private String uploadDir;

    @PostMapping("/image")
    public ResponseEntity<ResponseResult<String>> uploadImage(@RequestParam("file") MultipartFile file) {
        // 检查文件是否为空
        if (file == null || file.isEmpty()) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                                 .body(new ResponseResult<>(HttpStatus.BAD_REQUEST.value(), "文件为空"));
        }

        // 检查文件类型
        String contentType = file.getContentType();
        if (!isValidImageType(contentType)) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                                 .body(new ResponseResult<>(HttpStatus.BAD_REQUEST.value(), "不支持的文件类型: " + contentType));
        }

        // 生成新的文件名
        String originalFilename = file.getOriginalFilename();
        String fileName = System.currentTimeMillis() + "_" + originalFilename;

        // 创建上传目录的 File 对象
        File uploadDirectory = new File(uploadDir);

        // 创建目录（如果不存在）
        if (!uploadDirectory.exists()) {
            uploadDirectory.mkdirs();
        }

        // 设置保存路径
        File saveFile = new File(uploadDirectory, fileName);

        // 保存文件
        try {
            file.transferTo(saveFile);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                                 .body(new ResponseResult<>(HttpStatus.INTERNAL_SERVER_ERROR.value(), "文件上传失败: " + e.getMessage()));
        }

        // 返回成功响应
        return ResponseEntity.ok(new ResponseResult<>("文件上传成功: " + fileName, fileName));
    }

    // 检查文件类型是否有效
    private boolean isValidImageType(String contentType) {
        return contentType != null && (contentType.startsWith("image/"));
    }
}
