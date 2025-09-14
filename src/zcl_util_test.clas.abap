CLASS zcl_util_test DEFINITION
  PUBLIC FINAL CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS test_add   FOR TESTING.
    METHODS test_greet FOR TESTING.
ENDCLASS.

CLASS zcl_util_test IMPLEMENTATION.
  METHOD test_add.
    DATA(sum) = zcl_util=>add( iv_a = 2 iv_b = 3 ).
    cl_abap_unit_assert=>assert_equals(
      act = sum
      exp = 5
      msg = '2 + 3 must equal 5' ).
  ENDMETHOD.

  METHOD test_greet.
    DATA(txt) = zcl_util=>greet( ).
    cl_abap_unit_assert=>assert_not_initial(
      act = txt
      msg = 'greet must return text' ).
  ENDMETHOD.
ENDCLASS.
