module EventsHelper
  def event_required?(event)
    if event.required_event
      'Required'
    else
      'Not Required'
    end
  end

  def event_private?(event)
    if event.private_event
      'Required'
    else
      'Not Required'
    end
  end
end
