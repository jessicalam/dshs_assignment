require 'tty-prompt'

# Need to keep track of when the appointment happens, what services it is,
# what client the appointment is with and which service provider the appointment is with.
# If the appointment conflicts with another appointment,
# it should not be allowed to be scheduled. If the selected service provider does not offer
# the specified service, the appointment should not be allowed to be scheduled.




def prompt_view_sch
    prompt = TTY::Prompt.new
    appointments = DshsData.instance.appointments
    puts "----------"
    puts "Please select a service provider to view their appointments"
    puts "Service Providers: "

    # Shows each Provider Name for each
    appointments.each do |app|
      puts "- " + app['service_provider_name']
    end

    # Get Service Provider Name
    name_is_valid = false
    while !name_is_valid do
      service_provider_name_in = prompt.ask('Service provider name:')
      puts "Appointments for #{service_provider_name_in.upcase} "
      puts "----------"
      appointments.each do |app|
        if app["service_provider_name"] == service_provider_name_in
          puts "Date: " + app['date'].to_s
          puts "Service Name: " + app['service_name']
          puts "Client Name: " + app['client_name']
          puts "Start Time: " + app['start_time'].to_s
          puts "-- "
        end
      end
    end
end
