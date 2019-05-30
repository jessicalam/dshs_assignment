require 'tty-prompt'


def create_app
    prompt = TTY::Prompt.new

    puts DshsData.appointments

    # which service?
    # which service provider?
    # check if service provider offers the specified service
    # what time?
    # reoccurring or one-off appointment?
    # check for conflicts
    # if none, add to appointments array
end
