json.extract! eventnotifier, :id, :event_name, :event_subject, :event_company, :event_start, :event_end, :event_duration, :event_venue, :event_for, :event_chairman, :event_image, :event, :description, :event_sponser, :created_at, :updated_at
json.url eventnotifier_url(eventnotifier, format: :json)
