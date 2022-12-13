-- create tables
create table img_items (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint img_items_id_pk primary key,
    name                           varchar2(80 char) not null
)
;

create table img_images (
    id                             number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') 
                                   constraint img_images_id_pk primary key,
    item_id                        number
                                   constraint img_images_item_id_fk
                                   references img_items on delete set null,
    location                       varchar2(400 char) not null,
    file_name                      varchar2(80 char),
    mime_type                      varchar2(200 char),
    last_updated                   date not null
)
;

-- table index
create index img_images_i1 on img_images (item_id);

-- load data
