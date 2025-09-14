CLASS zcl_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS add
        IMPORTING iv_a TYPE i iv_b TYPE i
        RETURNING VALUE(rv_sum) TYPE i.
    CLASS-METHODS greet
        RETURNING VALUE(rv_text) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_util IMPLEMENTATION.
    METHOD add.
        rv_sum = iv_a + iv_b.
    ENDMETHOD.

    METHOD greet.
        rv_text = |Hello from ABAP CI/CD PoC!|.
    ENDMETHOD.
ENDCLASS.
