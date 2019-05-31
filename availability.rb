require 'tty-prompt'

def prompt_add_av
    prompt = TTY::Prompt.new
    # which service provider?
    add_service_provider = prompt.ask("Which service provider?")
    # what time?
    add_service_time = prompt.ask("What time?")
    # reoccurring or one-off availability change?
    add_reoccur = prompt.ask("Is this a reoccurring appointment?")
    #ask for availability
    add_availability = prompt.ask("Are you available?")
    start_time = 60
    end_time = 60
    #if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
    if add_reoccur == 'yes'
        DshsData.instance.add_service_provider(add_service_provider, add_service_time, add_reoccur)

        #if one-off, add to availability_blocks array
    elsif add_reoccur == 'no'
        DshsData.instance.add_availability(add_service_provider, add_service_time, start_time, end_time, add_availability)
    end







end

def prompt_remove_av
    prompt = TTY::Prompt.new
    # which service provider?
    requested_service_provider = prompt.ask("Which service provider did you request?")
    # what time?
    requested_service_time = prompt.ask("What time did you request?")
    # reoccurring or one-off availability change?
    requested_reoccur = prompt.yes?("Is this a reoccurring appointment did you request?")
    start_time = 60
    end_time = 60
    if requested_reoccur == 'yes'  #if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
        DshsData.instance.remove_service_provider(requested_service_provider, requested_service_time, requested_reoccur)
    elsif requested_reoccur == 'no' #if one-off, prompt for which date? and add to availability_blocks array
        DshsData.instance.remove_availability(requested_service_provider, requested_service_time, start_time, end_time)
    end





end

