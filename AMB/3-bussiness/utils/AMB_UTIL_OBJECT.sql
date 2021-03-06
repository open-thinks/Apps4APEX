create or replace package AMB_UTIL_OBJECT
/**
 * Applications Manager object utilities
 * @author:dailey.dai@oracle.com
 * @since: 1.0
 * @date: 2016/03/01
 */
as

/**
 * genarate project guid as key	
 */
function generate_guid return varchar2;


/**
 * generate the LOV query sql for project object type
 */
function list_object_type_query return varchar2;

/**
 * generate the LOV query sql for project object subtype
 */
function list_object_subtype_query return varchar2;

/**
 * generate the left region content with object list
 */
function generate_objects_list_region(f_version_id varchar2) return CLOB;

/**
 * check the parameter object id is exist and if the parameter version id is given, check the object is include in the givn version
 */
function is_validate(f_object_id varchar2,f_version_id varchar2 default NULL) return boolean;

function check_validate(f_object_id varchar2,f_version_id varchar2 default NULL) return VARCHAR2;

/**
 * fetch the object compile error detail message
 */
function get_compile_error(f_object_id varchar2) return AMB_TYPES.OBJECT_ERRORS;

function format_compile_error(f_errors AMB_TYPES.OBJECT_ERRORS) return VARCHAR2;

function is_in_build_all_list(f_object_id varchar2) return boolean;
function check_in_build_all_list(f_object_id varchar2) return VARCHAR2;
function is_in_export_list(f_object_id varchar2) return boolean;
function check_in_export_list(f_object_id varchar2) return VARCHAR2;

function is_build_without_comments(f_object_id varchar2) return boolean;


function count_by_type(f_object_type varchar2,f_version_id varchar2) return number;

end AMB_UTIL_OBJECT;