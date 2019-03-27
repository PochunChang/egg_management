json.set! :data do
  json.array! @events do |event|
    json.partial! 'events/event', event: event
    json.url  "
              #{link_to 'Show', event }
              #{link_to 'Edit', edit_event_path(event)}
              #{link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end