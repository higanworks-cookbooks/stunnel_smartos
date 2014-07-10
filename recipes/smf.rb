smf "stunnel" do
  user "root"
  start_command "/opt/local/bin/stunnel"
  start_timeout 10
  stop_command "/usr/bin/pkill stunnel"
  stop_timeout  5
  restart_command "/usr/bin/pkill stunnel && /opt/local/bin/stunnel"
  restart_timeout 60
  locale "C"
  manifest_type "application"
  service_path  "/var/svc/manifest"
end
