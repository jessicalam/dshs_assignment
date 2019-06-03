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
                                    "saturday" => [false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
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
        @availability_blocks = [
            {
                "service_provider_name" => "yeet",
                "date" => 18236,
                "start_time" => 0,
                "end_time" => 7,
                "is_available" => false,
            },
            {
                "service_provider_name" => "yeet",
                "date" => 18237,
                "start_time" => 0,
                "end_time" => 3,
                "is_available" => true,
            }
        ]
    end

    attr_accessor :services, :service_providers, :appointments, :availability_blocks

    def add_service(name, price, length)
        # code to add a service to services dictionary
        services[name] = {
            "price" => price,
            "length" => length
        }
        puts "#{name} has successfully been added to services!".colorize(:green ).colorize( :background => :black)
        puts services.inspect.blue
        puts
    end

    def remove_service(name)
        # code to remove a service from services dictionary
        services.delete(name)
        puts "#{name} has successfully been removed from services".colorize(:green ).colorize( :background => :black)
        puts services.inspect.blue
        puts
    end

    def add_service_provider(name, phone, services, availability)
        # code to add a service provider to service_providers dictionary
        service_providers[name] = {
            "phone" => phone,
            "services" => services,
            "availability" => availability
        }
        puts "#{name} has successfully been added to service providers!".colorize(:green ).colorize( :background => :black)
        puts service_providers.inspect.blue
        puts
    end

    def remove_service_provider(name)
        # code to remove a service provider from service_providers dictionary
        service_providers.delete(name)
        puts "#{name} has successfully been removed from service providers".colorize(:green ).colorize( :background => :black)
        puts service_providers.inspect.blue
        puts
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
        puts 'Your appoinment has been scheduled!'.colorize(:green ).colorize( :background => :black)
        puts @appointments.inspect.blue
        puts
    end

    def add_availability(name, date, start_time, end_time, is_available)
        app_new = {
            "name" => name,
            "date" => date,
            "start_time" => start_time,
            "end_time" => end_time,
            "is_available" => is_available,
        }
        @availability_blocks << app_new
        puts @availability_blocks.inspect.yellow

        # code to add availability to availability_blocks array
    end

    def remove_availability(name,requested_time, start_time, end_time)
        @availability_blocks.delete(name)
        @availability_blocks.delete(requested_time)
        @availability_blocks.delete(start_time)
        @availability_blocks.delete(end_time)

        puts @availability_blocks.inspect.yellow
        # code to remove availability from availability_blocks array
    end
end