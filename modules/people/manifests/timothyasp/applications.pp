class people::timothyasp::applications {
   include chrome
   include chrome::canary
   include firefox
   include opera

   include iterm2::stable
   include iterm2::colors::solarized_dark

   include python

#   include vim

   include shiftit
   include adium
   include skype
   include alfred
   include spotify
#   include cloudapp
   include lastpass

   include libpng
   include autoconf
   include libtool
   include wget
   include pcre

#   include mysql
#   mysql::db { 'devdb': }

#   include php

   include java

   include android::sdk
   include android::tools
   include android::platform_tools
   include android::studio
   include android::doc

   android::build_tools { '20': }

   package {
      [
         'gradle',
         'tmux',
         'zsh',
      ]:
   }
}
