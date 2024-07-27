-- back compat for old kwarg name
  
  begin;
    

        insert into AIRBNB.DEV.fct_review ("REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_review__dbt_tmp
        );
    commit;