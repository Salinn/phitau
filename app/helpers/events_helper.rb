module EventsHelper
  def required?(event)
    if event.required_event
      'Required'
    else
      'Not Required'
    end
  end
end
