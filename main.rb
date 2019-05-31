require 'tty-prompt'
require_relative 'services'
require_relative 'service_providers'
require_relative 'appointments'
require_relative 'availability'
require_relative 'schedule'


class DshsData
    include Singleton

    def initialize
        # will be initialized with sample data, see data_structure
        @services = {
            "hugs" => {
                "price" => 1,
                "length" => 1
            },
            "kisses" => {
                "price" => 2,
                "length" => 2
            }
        }
        @service_providers = {
            "boi" => {
                "phone" => "1",
                "services" => ["hugs"],
                "availability" => {
                                    "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }
            },
            "waluigi" => {
                "phone" => "2",
                "services" => ["kisses"],
                "availability" => {
                                    "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }
            },
            "yeet" => {
                "phone" => "3",
                "services" => ["hugs", "kisses"],
                "availability" => {
                                    "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true],
                                    "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }
            }
        }
        @appointments = [
            {
                "date" => 18235,
                "start_time" => 9,
                "service_name" => "kisses",
                "client_name" => "yoshi",
                "service_provider_name" => "yeet",
            }
        ]
        @availability_blocks = []
    end

    attr_accessor :services, :service_providers, :appointments, :availability_blocks

    def add_service(name, price, length)
        # code to add a service to services dictionary
        services[name] = {
            "price" => price,
            "length" => length
        }
        puts "#{name} has successfully been added to services!".green
        puts services.inspect.yellow
    end

    def remove_service(name)
        # code to remove a service from services dictionary
        services.delete(name)
        puts "#{name} has successfully been removed from services".green
        puts services.inspect.yellow
    end

    def add_service_provider(name, phone, services, availability)
        # code to add a service provider to service_providers dictionary
        service_providers[name] = {
            "phone" => phone,
            "services" => services,
            "availability" => availability
        }
        puts "#{name} has successfully been added to service providers!".green
        puts service_providers.inspect.yellow
    end

    def remove_service_provider(name)
        # code to remove a service provider from service_providers dictionary
        service_providers.delete(name)
        puts "#{name} has successfully been removed from service providers".green
        puts service_providers.inspect.yellow
    end

    def create_appointment(date, start_time, service_name, service_provider_name, client_name)
        # code to add an appointment to the appointments array
        app_new = {
            "date" => date,
            "start_time" => start_time,
            "service_name" => service_name,
            "service_provider_name" => service_provider_name,
            "client_name" => client_name
        }
        @appointments << app_new
        puts 'Your appoinment has been scheduled!'.green
        puts @appointments.inspect.yellow
    end

    def add_availability(name, date, start_time, end_time)

        # code to add availability to availability_blocks array
    end

    def remove_availability(name)
        # code to remove availability from availability_blocks array
    end
end




if ARGV[0] == 'services:add'
    prompt_add_serv()       # call services.rb 'prompt_add'
elsif ARGV[0] == 'services:remove'
    prompt_remove_serv()    # call services.rb 'prompt_remove'
elsif ARGV[0] == 'service_providers:add'
    prompt_add_sp()         # call service_providers.rb 'prompt_add'
elsif ARGV[0] == 'service_providers:remove'
    prompt_remove_sp()      # call service_providers.rb 'prompt_remove'
elsif ARGV[0] == 'appointments:create'
    create_app()            # call appointments.rb 'create'
elsif ARGV[0] == 'availability:add'
    prompt_add_av()         # call availability.rb 'prompt_add'
elsif ARGV[0] == 'availability:remove'
    prompt_remove_av()      # call availability.rb 'prompt_remove'
elsif ARGV[0] == 'schedule:view'
    prompt_view_sch()       # call schedule.rb 'prompt_view'
else
    raise "Unknown command #{ARGV[0]}"
end