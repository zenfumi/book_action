# paths
    app_path = "/var/www/book_action"
    pid_path = "#{app_path}/tmp/pids/unicorn.pid"
    listen_path = "#{app_path}/tmp/sockets/unicorn.sock"
    # unicorn paths
    working_directory app_path
    pid pid_path
    # listen
    listen listen_path, backlog: 64

    # logging
    stderr_path "#{app_path}/log/unicorn.stderr.log"
    stdout_path "#{app_path}/log/unicorn.stdout.log"

    # workers
    worker_processes 2

    # Time-out
    timeout 30
    #config.eager_load = false
    
    # use correct Gemfile on restarts
    before_exec do |_server|
      ENV["BUNDLE_GEMFILE"] = "#{app_path}/Gemfile"
    end

    # preload
    preload_app true

    before_fork do |server, _worker|
      # the following is highly recomended for Rails + "preload_app true"
      # as there's no need for the master process to hold a connection
      if defined?(ActiveRecord::Base)
        ActiveRecord::Base.connection.disconnect!
      end

      # Before forking, kill the master process that belongs to the .oldbin PID.
      # This enables 0 downtime deploys.
      # rubocop: disable Lint/HandleExceptions
      old_pid = "#{server.config[:pid]}.oldbin"
      if File.exist?(old_pid) && server.pid != old_pid
        begin
          Process.kill("QUIT", File.read(old_pid).to_i)
        rescue Errno::ENOENT, Errno::ESRCH
          # someone else did our job for us
        end
      end
      # rubocop: enable Lint/HandleExceptions
    end

    after_fork do |_server, _worker|
      if defined?(ActiveRecord::Base)
        ActiveRecord::Base.establish_connection
      end
    end

