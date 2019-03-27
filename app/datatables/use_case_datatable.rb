class UseCaseDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      division: { source: "UseCase.division"},
      use_case_no: { source: "UseCase.use_case_no"},
      date: { source: "UseCase.date"},
      client_name: { source: "UseCase.client_name"},
      product_name: { source: "UseCase.product_name"},
      mod: { source: "UseCase.mod"},
      province: { source: "UseCase.province"},
      store: { source: "UseCase.store"},
      memo: { source: "UseCase.memo"},
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        division: record.division,
        use_case_no: record.use_case_no,
        date: record.date,
        client_name: record.client_name,
        product_name: record.product_name,
        mod: record.mod,
        province: record.province,
        store: record.store,
        memo: record.memo,
        DT_RowId: record.id,
      }
    end
  end

  def get_raw_records
    # insert query here
    # User.all
    UseCase.all
  end

end
