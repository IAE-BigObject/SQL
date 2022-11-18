UPDATE operational_privileges_on_objects
SET allowed_privileges=json_build_array('owner', 'admin', 'write')
WHERE operation_id = 'DuplicateSharedLinkHandle';

UPDATE operational_privileges_on_objects
SET allowed_privileges=json_build_array('owner', 'admin', 'write', 'read')
WHERE ARRAY[operation_id] <@ ARRAY['UpdatePipeImageVersionsHandle','StartPipeHandle','StopPipeHandle'];

UPDATE operational_privileges_on_objects
SET allowed_privileges=json_build_array('owner')
WHERE ARRAY[operation_id] <@ ARRAY['DeletePipeHandle','DeleteStreamerByPipelineHandle','DeleteStreamerXByPipelineHandle','DeleteExtractorByPipelineHandle','DeleteFileByPipelineHandle','DeleteKafkaByPipelineHandle'];

UPDATE permission_descriptions
   SET description = '可編輯、檢視、啟動、停止、重新啟動水管，變更軟體版本及管理該水管權限設定'
WHERE class_module = 'pipeline' AND name= 'admin';

UPDATE permission_descriptions
   SET description = '可編輯、檢視、啟動、停止、重新啟動水管，變更軟體版本'
WHERE class_module = 'pipeline' AND name= 'write';

UPDATE permission_descriptions
   SET description = '可檢視、啟動、停止、重新啟動水管，變更軟體版本'
WHERE class_module = 'pipeline' AND name= 'read';

INSERT INTO permission_descriptions (class_module, auth, name ,description) values
('pipeline', 'template', 'owner', '可編輯、檢視、啟動、停止、重新啟動、刪除水管，變更軟體版本及管理該水管權限設定');

UPDATE permission_descriptions
   SET description = '可檢視、重啟、修改、刪除該Elasticsearch，變更軟體版本並管理該Elasticsearch權限設定'
WHERE class_module = 'elasticsearch' AND name= 'admin';
