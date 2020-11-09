create or replace type t_emp_row as object(
    ename    varchar2(50),
    job      varchar2(50),
    mgr      varchar2(50),
    hiredate date,
    sal      number,
    comm     number,
    -- the DEPTNO column is an LOV column. Thus we treat it as VARCHAR2
    deptno   varchar2(50) );
/

create or replace type t_emp_table as table of t_emp_row
/

create or replace function get_faceted_search_data( 
    p_page_id          in number,
    p_region_static_id in varchar2 ) 
    return t_emp_table pipelined 
is
    l_region_id   number;
    l_context     apex_exec.t_context;

    type t_col_index is table of pls_integer index by varchar2(255);
    l_col_index t_col_index;

    ---------------------------------------------------------------------------
    procedure get_column_indexes( p_columns wwv_flow_t_varchar2 ) is
    begin
        for i in 1 .. p_columns.count loop
            l_col_index( p_columns( i ) ) := apex_exec.get_column_position( 
                                                 p_context => l_context, 
                                                 p_column_name => p_columns( i ) );
        end loop;
    end get_column_indexes;
begin
    -- 1. get the region ID of the Faceted Search region
    select region_id
      into l_region_id
      from apex_application_page_regions
     where application_id = v('APP_ID')
       and page_id        = p_page_id
       and static_id      = p_region_static_id;

    -- 2. Get a cursor (apex_exec.t_context) for the current region data
    l_context := apex_region.open_query_context(
                     p_page_id      => p_page_id,
                     p_region_id    => l_region_id );

    get_column_indexes( wwv_flow_t_varchar2( 'ENAME', 'JOB', 'MGR', 'HIREDATE', 'SAL', 'COMM', 'DEPTNO' ) );

    while apex_exec.next_row( p_context => l_context ) loop
        pipe row( t_emp_row(
                      apex_exec.get_varchar2( p_context => l_context, p_column_idx => l_col_index( 'ENAME' ) ),
                      apex_exec.get_varchar2( p_context => l_context, p_column_idx => l_col_index( 'JOB' ) ),
                      apex_exec.get_varchar2( p_context => l_context, p_column_idx => l_col_index( 'MGR' ) ),
                      apex_exec.get_date    ( p_context => l_context, p_column_idx => l_col_index( 'HIREDATE' ) ),
                      apex_exec.get_number  ( p_context => l_context, p_column_idx => l_col_index( 'SAL' ) ),
                      apex_exec.get_number  ( p_context => l_context, p_column_idx => l_col_index( 'COMM' ) ),
                      apex_exec.get_varchar2( p_context => l_context, p_column_idx => l_col_index( 'DEPTNO' ) ) ) );
    end loop;

    apex_exec.close( l_context );

    return;
exception
    when no_data_needed then
        apex_exec.close( l_context );
        return;
    when others then
        apex_exec.close( l_context );
        raise;
end get_faceted_search_data;
/
sho err
