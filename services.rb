require 'tty-prompt'


def prompt_add_serv
    prompt = TTY::Prompt.new

    name_in = prompt.ask('Service name:')
    price_in = prompt.ask('Price:')
    length_in = prompt.ask('Length:')
    add_service(name_in, price_in, length_in)
end

def prompt_remove_serv
    prompt = TTY::Prompt.new

    name_in = prompt.ask('Service name:')
    remove_service(name_in)
end

def add_service(name, price, length)
    # code to add a service to services dictionary
end

def remove_service(name)
    # code to remove a service from services dictionary
end

