require 'tty-prompt'


def prompt_add_av
    prompt = TTY::Prompt.new

    # which service provider?
    # what time?
    # reoccurring or one-off availability change?
    # if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
    # if one-off, add to availability_blocks array
end

def prompt_remove_av
    prompt = TTY::Prompt.new

    # which service provider?
    # what time?
    # reoccurring or one-off availability change?
    # if reoccurring, edit the specified service provider's availability dictionary within the service_providers dictionary
    # if one-off, prompt for which date? and add to availability_blocks array
end

def add_availability(name, date, start_time, end_time)
    # code to add availability to availability_blocks array
end

def remove_availability(name)
    # code to remove availability from availability_blocks array
end
