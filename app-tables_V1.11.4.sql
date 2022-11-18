UPDATE operational_privileges_on_objects
SET allowed_privileges=json_build_array('owner', 'admin', 'write')
WHERE operation_id = 'RegisterBigobjectClusterHandle';

UPDATE operational_privileges_on_objects
SET allowed_privileges=json_build_array('owner', 'admin', 'write')
WHERE operation_id = 'UnregisterBigobjectClusterHandle';

UPDATE operational_privileges_on_objects
SET operation_id='AddBigobjectRoleMemberHandle'
WHERE operation_id = 'AddBigobjectRoleMember';
