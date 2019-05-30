require 'tty-prompt'


def prompt_view_sch
    prompt = TTY::Prompt.new

    service_provider_name_in = prompt.ask('Service provider name:')
    view_schedule(service_provider_name_in)
end

def view_schedule(name)
    # code to view schedule
end

