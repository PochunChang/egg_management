# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#users-datatable').dataTable
    processing: true
    serverSide: true
    ajax: $('#use_cases_datatable').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'division'}
      {data: 'use_case_no'}
      {data: 'date'}
      {data: 'client_name'}
      {data: 'mod'}
      {data: 'province'}
      {data: 'store'}
      {data: 'memo'}
    ]

