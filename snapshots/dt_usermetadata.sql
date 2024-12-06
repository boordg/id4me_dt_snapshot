{% snapshot dt_usermetadata %}  

{{    
  config(      
    target_schema='snapshots',      
    strategy='check',      
    unique_key='user_id',      
    check_cols=['financial_expiry']    
  )  
}}  

select * 
FROM dt_usermetadata

{% endsnapshot %}