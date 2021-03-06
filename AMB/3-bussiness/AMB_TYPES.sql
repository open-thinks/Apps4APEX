create or replace package AMB_TYPES
as

TYPE OBJECT_ERRORS is table of USER_ERRORS%ROWTYPE;

TYPE PROJECT_OPTIONS is table of AMB_OPS_PROJECT%ROWTYPE;

TYPE VERSION_OPTIONS is table of AMB_OPS_VERSION%ROWTYPE;

TYPE OBJECT_OPTIONS is table of AMB_OPS_OBJECT%ROWTYPE;


end;
/

CREATE OR replace TYPE AMB_OPTION as object(
	ID VARCHAR2(100),
	OPS_CODE VARCHAR2(100),
	OPS_VALUE VARCHAR2(500),
	OPS_STYLE VARCHAR2(10),
	OPS_DESC VARCHAR2(1000)
);
/

CREATE or replace TYPE AMB_OPTION_LIST as TABLE of AMB_OPTION;
/

