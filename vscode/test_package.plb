create or replace package body test_package 
as
function version
return VARCHAR2
as
begin
    return 'e2';
end version;
end test_package;
/
show error