require 'tty-prompt'


def prompt_add_serv
    prompt = TTY::Prompt.new

    name_in = prompt.ask('Service name:')
    price_in = prompt.ask('Price:')
    length_in = prompt.ask('Length:')
    DshsData.instance.add_service(name_in, price_in, length_in)
end

def prompt_remove_serv
    prompt = TTY::Prompt.new

    name_in = prompt.ask('Service name:')
    DshsData.instance.remove_service(name_in)
end

