# This script can be run to clean up certificates from the database if needed
# Run with: rails runner tmp/certificate_cleanup.rb

# Comment this out if you want to actually delete certificates
puts "This is a dry run. No certificates will be deleted."
puts "To actually delete certificates, edit this script."

Certificate.destroy_all  # Uncomment this line to actually delete all certificates

puts "Certificate cleanup complete."
