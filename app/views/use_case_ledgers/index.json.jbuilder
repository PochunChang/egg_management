json.set! :data do
  json.array! @use_case_ledgers do |use_case_ledger|
    json.partial! 'use_case_ledgers/use_case_ledger', use_case_ledger: use_case_ledger
    json.url  "
              #{link_to 'Show', use_case_ledger }
              #{link_to 'Edit', edit_use_case_ledger_path(use_case_ledger)}
              #{link_to 'Destroy', use_case_ledger, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end