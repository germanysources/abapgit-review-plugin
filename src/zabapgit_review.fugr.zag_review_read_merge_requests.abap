FUNCTION ZAG_REVIEW_READ_MERGE_REQUESTS.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_TRKORR) TYPE  TRKORR
*"  EXPORTING
*"     REFERENCE(ET_MERGE_REQUESTS) TYPE  ZAOR_MERGE_REQ_URL_TT
*"  RAISING
*"      CX_STATIC_CHECK
*"----------------------------------------------------------------------
  DATA: lt_pull_requests TYPE zcl_abapgit_review=>tt_pull_urls.

  NEW zcl_abapgit_review( )->find_pull_request_urls(
    EXPORTING
      iv_trkorr = iv_trkorr
    IMPORTING
      et_pull_requests = lt_pull_requests ).
  MOVE-CORRESPONDING lt_pull_requests TO et_merge_requests.

ENDFUNCTION.
