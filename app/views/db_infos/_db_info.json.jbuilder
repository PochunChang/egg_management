json.extract! db_info, :id, :db_info_no, :created_at, :updated_at, :serial_no, :identification, :ip, :db_name, :name, :self, :printer, :backup, :os, :hard_info_id
json.url db_info_url(db_info, format: :json)
