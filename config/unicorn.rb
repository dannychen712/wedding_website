# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "~rails/wedding_website"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/rails/wedding_website/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/rails/wedding_website/log/unicorn.log"
stdout_path "/home/rails/wedding_website/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.wedding_website.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
