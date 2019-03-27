json.set! :data do
  json.array! @db_infos do |db_info|
    json.partial! 'db_infos/db_info', db_info: db_info
    json.url  "
              #{link_to 'Show', db_info }
              #{link_to 'Edit', edit_db_info_path(db_info)}
              #{link_to 'Destroy', db_info, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end