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
        @services = {}
        @service_providers = {}
        @appointments = []
        @availability_blocks = []
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