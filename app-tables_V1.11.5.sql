UPDATE permission_descriptions
   SET auth = 'template'
WHERE class_module = 'bigobject' AND name = 'read';

ALTER TABLE tasks
  ADD rank INT NOT NULL DEFAULT 999;

UPDATE tasks
   SET rank = 10
WHERE task = 'CreateBigObject';

UPDATE tasks
   SET rank = 20
WHERE task = 'CreateBONA';

UPDATE tasks
   SET rank = 30
WHERE task = 'CreateElasticsearch';

UPDATE tasks
   SET rank = 40
WHERE task = 'ManageCluster';

UPDATE tasks
   SET rank = 50
WHERE task = 'CreatePipeline';

UPDATE tasks
   SET rank = 60
WHERE task = 'DataDictionary';

UPDATE tasks
   SET rank = 70, link = ''
WHERE task = 'SharedLinksManagement';

UPDATE tasks
   SET rank = 80
WHERE task = 'UserManagement';

UPDATE tasks
   SET rank = 90
WHERE task = 'RoleManagement';

UPDATE tasks
   SET rank = 100
WHERE task = 'HostConnection';

UPDATE tasks
   SET rank = 110
WHERE task = 'NotificationSetting';

UPDATE tasks
   SET rank = 120
WHERE task = 'OperatingHistory';