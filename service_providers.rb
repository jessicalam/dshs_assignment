require 'tty-prompt'


def prompt_add_sp
    prompt = TTY::Prompt.new

    service_provider_name_in = prompt.ask('Service provider name:')
    phone_in = prompt.ask('Phone #:')
    services_in = prompt.ask('Services provided (separate by comma):')
    # need to check availability now???
    add_service_provider(service_provider_name_in, phone_in, services_in)
end

def prompt_remove_sp
    prompt = TTY::Prompt.new

    service_provider_name_in = prompt.ask('Service provider name:')
    remove_service_provider(service_provider_name_in)
end

def add_service_provider(name, phone, services)
    # code to add a service provider to service_providers dictionary
end

def remove_service_provider(name)
    # code to remove a service provider from service_providers dictionary
end

