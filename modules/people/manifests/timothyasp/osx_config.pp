class people::timothyasp::osx_config {

   # Dock Settings
   include osx::dock::autohide

   osx::global::disable_remote_control_ir_receiver

   # Fuck natural scrolling
   class { 'osx::global::natural_mouse_scrolling':
     enabled => false
   }

   osx::finder::unhide_library
   osx::finder::show_hidden_files
   osx::finder::show_all_filename_extensions

   osx::no_network_dsstores
   osx::software_update

   include osx::keyboard::capslock_to_control

   include osx::safari::enable_developer_mode

   class { 'osx::dock::position':
     position => 'left'
   }

   $recovery_owner = "This computer belongs to Timothy Asp."
   $recovery_contact = "If found, please contact timothy.asp@gmail.com or 612-716-8461"
   osx::recovery_message { "${recovery_owner} ${recovery_contact}": }

}
