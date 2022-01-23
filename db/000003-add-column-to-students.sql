alter table students
add column created_at timestampz not null default now(),
add column updated_at timestampz;