# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rake}
  s.version = "10.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Jim Weirich"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBAjANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdkcmJy\nYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZFgNu\nZXQwHhcNMTQwMzI0MjEwNTQ1WhcNMTUwMzI0MjEwNTQ1WjBBMRAwDgYDVQQDDAdk\ncmJyYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZ\nFgNuZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCbbgLrGLGIDE76\nLV/cvxdEzCuYuS3oG9PrSZnuDweySUfdp/so0cDq+j8bqy6OzZSw07gdjwFMSd6J\nU5ddZCVywn5nnAQ+Ui7jMW54CYt5/H6f2US6U0hQOjJR6cpfiymgxGdfyTiVcvTm\nGj/okWrQl0NjYOYBpDi+9PPmaH2RmLJu0dB/NylsDnW5j6yN1BEI8MfJRR+HRKZY\nmUtgzBwF1V4KIZQ8EuL6I/nHVu07i6IkrpAgxpXUfdJQJi0oZAqXurAV3yTxkFwd\ng62YrrW26mDe+pZBzR6bpLE+PmXCzz7UxUq3AE0gPHbiMXie3EFE0oxnsU3lIduh\nsCANiQ8BAgMBAAGjOTA3MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBS5k4Z75VSpdM0AclG2UvzFA/VW5DANBgkqhkiG9w0BAQUFAAOCAQEACQFPYbmk\nP51YZtd2sTMJkwhMs3RtLy+MqFpITMoPUjK1gvPw6NyzotvW0WkiU3KXIOem4l8s\nlDqWPIGobRf+Hvzp92hX/CEDGOSMbVBzuLZ4NAQftpvF91FE8KYCvrO+Nj8ei2X/\n+R7biySvcvWhCsIuBawVW6RxZdxaEHVZrbTX9cqGTAfnWhOIpsGJ/vNOofu1jIrw\ndAwolOAbVCvXy7lPI7oFtVzGu18RT7NW6Q4frd28V0Qs4shmW+ckdlneSzN1hVft\npfkQPF5Ezsi73pEpFN93Fy21NKCYQH1jCwWeKUF29MIMGd6kE3ZmHW/7fz5GwKIM\nLs5SgY48a0l7Hw==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2014-04-17}
  s.default_executable = %q{rake}
  s.description = %q{Rake is a Make-like program implemented in Ruby. Tasks and dependencies are
specified in standard Ruby syntax.

Rake has the following features:

* Rakefiles (rake's version of Makefiles) are completely defined in
  standard Ruby syntax.  No XML files to edit.  No quirky Makefile
  syntax to worry about (is that a tab or a space?)

* Users can specify tasks with prerequisites.

* Rake supports rule patterns to synthesize implicit tasks.

* Flexible FileLists that act like arrays but know about manipulating
  file names and paths.

* A library of prepackaged tasks to make building rakefiles easier. For example,
  tasks for building tarballs and publishing to FTP or SSH sites.  (Formerly
  tasks for building RDoc and Gems were included in rake but they're now
  available in RDoc and RubyGems respectively.)

* Supports parallel execution of tasks.}
  s.email = ["drbrain@segment7.net", ""]
  s.executables = ["rake"]
  s.files = ["test/test_private_reader.rb", "test/test_rake.rb", "test/test_rake_application.rb", "test/test_rake_application_options.rb", "test/test_rake_backtrace.rb", "test/test_rake_clean.rb", "test/test_rake_cpu_counter.rb", "test/test_rake_definitions.rb", "test/test_rake_directory_task.rb", "test/test_rake_dsl.rb", "test/test_rake_early_time.rb", "test/test_rake_extension.rb", "test/test_rake_file_creation_task.rb", "test/test_rake_file_list.rb", "test/test_rake_file_list_path_map.rb", "test/test_rake_file_task.rb", "test/test_rake_file_utils.rb", "test/test_rake_ftp_file.rb", "test/test_rake_functional.rb", "test/test_rake_invocation_chain.rb", "test/test_rake_linked_list.rb", "test/test_rake_makefile_loader.rb", "test/test_rake_multi_task.rb", "test/test_rake_name_space.rb", "test/test_rake_package_task.rb", "test/test_rake_path_map.rb", "test/test_rake_path_map_explode.rb", "test/test_rake_path_map_partial.rb", "test/test_rake_pseudo_status.rb", "test/test_rake_rake_test_loader.rb", "test/test_rake_reduce_compat.rb", "test/test_rake_require.rb", "test/test_rake_rules.rb", "test/test_rake_scope.rb", "test/test_rake_task.rb", "test/test_rake_task_argument_parsing.rb", "test/test_rake_task_arguments.rb", "test/test_rake_task_lib.rb", "test/test_rake_task_manager.rb", "test/test_rake_task_manager_argument_resolution.rb", "test/test_rake_task_with_arguments.rb", "test/test_rake_test_task.rb", "test/test_rake_thread_pool.rb", "test/test_rake_top_level_functions.rb", "test/test_rake_win32.rb", "test/test_thread_history_display.rb", "test/test_trace_output.rb", "bin/rake"]
  s.homepage = %q{https://github.com/jimweirich/rake}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rake}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rake is a Make-like program implemented in Ruby}
  s.test_files = ["test/test_private_reader.rb", "test/test_rake.rb", "test/test_rake_application.rb", "test/test_rake_application_options.rb", "test/test_rake_backtrace.rb", "test/test_rake_clean.rb", "test/test_rake_cpu_counter.rb", "test/test_rake_definitions.rb", "test/test_rake_directory_task.rb", "test/test_rake_dsl.rb", "test/test_rake_early_time.rb", "test/test_rake_extension.rb", "test/test_rake_file_creation_task.rb", "test/test_rake_file_list.rb", "test/test_rake_file_list_path_map.rb", "test/test_rake_file_task.rb", "test/test_rake_file_utils.rb", "test/test_rake_ftp_file.rb", "test/test_rake_functional.rb", "test/test_rake_invocation_chain.rb", "test/test_rake_linked_list.rb", "test/test_rake_makefile_loader.rb", "test/test_rake_multi_task.rb", "test/test_rake_name_space.rb", "test/test_rake_package_task.rb", "test/test_rake_path_map.rb", "test/test_rake_path_map_explode.rb", "test/test_rake_path_map_partial.rb", "test/test_rake_pseudo_status.rb", "test/test_rake_rake_test_loader.rb", "test/test_rake_reduce_compat.rb", "test/test_rake_require.rb", "test/test_rake_rules.rb", "test/test_rake_scope.rb", "test/test_rake_task.rb", "test/test_rake_task_argument_parsing.rb", "test/test_rake_task_arguments.rb", "test/test_rake_task_lib.rb", "test/test_rake_task_manager.rb", "test/test_rake_task_manager_argument_resolution.rb", "test/test_rake_task_with_arguments.rb", "test/test_rake_test_task.rb", "test/test_rake_thread_pool.rb", "test/test_rake_top_level_functions.rb", "test/test_rake_win32.rb", "test/test_thread_history_display.rb", "test/test_trace_output.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.7"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.2"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.7"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.2"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.7"])
  end
end
