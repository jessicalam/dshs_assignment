require 'tty-prompt'


def prompt_add_sp
    prompt = TTY::Prompt.new

    service_provider_name_in = prompt.ask('Service provider name:')
    phone_in = prompt.ask('Phone #:')
    services_in = prompt.ask('Services provided (separate by comma):')
    # need to check availability now???
    DshsData.instance.add_service_provider(service_provider_name_in, phone_in, services_in)
end

def prompt_remove_sp
    prompt = TTY::Prompt.new

    service_provider_name_in = prompt.ask('Service provider name:')
    DshsData.instance.remove_service_provider(service_provider_name_in)
end

