class people::timothyasp {
   notify { 'class people::timothyasp declared': }

   include people::timothyasp::applications
   include people::timothyasp::git
   include people::timothyasp::links
   include people::timothyasp::osx_config
}
