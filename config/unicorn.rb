# config/unicorn.rb

# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/truefit"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/truefit/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/truefit/log/unicorn.log"
stdout_path "/var/www/truefit/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.TrueFitTattoo.sock"
listen "/tmp/unicorn.truefit.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30

