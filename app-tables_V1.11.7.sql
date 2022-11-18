UPDATE permission_descriptions
   SET description = '可檢視、修改、刪除該水庫並管理該水庫權限設定'
WHERE class_module = 'bigobject' AND name= 'admin';

UPDATE permission_descriptions
   SET description = '可檢視與修改該水庫'
WHERE class_module = 'bigobject' AND name= 'write';
