require 'tty-prompt'

def prompt_add_av
    prompt = TTY::Prompt.new
    add_service_provider = prompt.ask("Which service provider?")
    add_service_time = prompt.ask("What time?")
    add_reoccur = prompt.ask("Is this a reoccurring appointment?")
    start_time = 60
    end_time = 60
    if add_reoccur == 'yes'
        add_service_provider(add_service_provider, add_service_time, add_reoccur)
    elsif add_reoccur == 'no'
        add_availability(add_service_provider, add_service_time, start_time, end_time)
    end


    # which service provider?
    # what time?
    # reoccurring or one-off availability change?
    # if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
    # if one-off, add to availability_blocks array
end

def prompt_remove_av
    prompt = TTY::Prompt.new
    requested_service_provider = prompt.ask("Which service provider did you request?")
    requested_service_time = prompt.ask("What time did you request?")
    requested_reoccur = prompt.yes?("Is this a reoccurring appointment did you request?")
    start_time = 60
    end_time = 60
    if requested_reoccur == 'yes'
        remove_service_provider(requested_service_provider, requested_service_time, requested_reoccur)
    elsif requested_reoccur == 'no'
        remove_availability(requested_service_provider, requested_service_time, start_time, end_time)
    end
    # which service provider?
    # what time?
    # reoccurring or one-off availability change?
    # if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
    # if one-off, prompt for which date? and add to availability_blocks array
end

