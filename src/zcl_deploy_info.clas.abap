CLASS zcl_deploy_info DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CONSTANTS co_version TYPE string VALUE '1.0.0-LOCAL'.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_deploy_info IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
        out->write( |Deployed version: { co_version }| ).
    ENDMETHOD.
ENDCLASS.
