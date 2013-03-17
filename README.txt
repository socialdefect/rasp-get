                                                                                                                                                   
                                                                                                                                     tttt          
                                                                                                                                  ttt:::t          
                                                                                                                                  t:::::t          
                                                                                                                                  t:::::t          
rrrrr   rrrrrrrrr  aaaaaaaaaaaaa     ssssssssss  ppppp   ppppppppp                       ggggggggg   ggggg   eeeeeeeeeeee   ttttttt:::::ttttttt    
r::::rrr:::::::::r a::::::::::::a  ss::::::::::s p::::ppp:::::::::p                     g:::::::::ggg::::g ee::::::::::::ee t:::::::::::::::::t    
r:::::::::::::::::raaaaaaaaa:::::ss:::::::::::::sp:::::::::::::::::p                   g:::::::::::::::::ge::::::eeeee:::::et:::::::::::::::::t    
rr::::::rrrrr::::::r        a::::s::::::ssss:::::pp::::::ppppp::::::p --------------- g::::::ggggg::::::ge::::::e     e:::::tttttt:::::::tttttt    
 r:::::r     r:::::r aaaaaaa:::::as:::::s  ssssss p:::::p     p:::::p -:::::::::::::- g:::::g     g:::::ge:::::::eeeee::::::e     t:::::t          
 r:::::r     rrrrrraa::::::::::::a  s::::::s      p:::::p     p:::::p --------------- g:::::g     g:::::ge:::::::::::::::::e      t:::::t          
 r:::::r          a::::aaaa::::::a     s::::::s   p:::::p     p:::::p                 g:::::g     g:::::ge::::::eeeeeeeeeee       t:::::t          
 r:::::r         a::::a    a:::::ssssss   s:::::s p:::::p    p::::::p                 g::::::g    g:::::ge:::::::e                t:::::t    tttttt
 r:::::r         a::::a    a:::::s:::::ssss::::::sp:::::ppppp:::::::p                 g:::::::ggggg:::::ge::::::::e               t::::::tttt:::::t
 r:::::r         a:::::aaaa::::::s::::::::::::::s p::::::::::::::::p                   g::::::::::::::::g e::::::::eeeeeeee       tt::::::::::::::t
 r:::::r          a::::::::::aa:::s:::::::::::ss  p::::::::::::::pp                     gg::::::::::::::g  ee:::::::::::::e         tt:::::::::::tt
 rrrrrrr           aaaaaaaaaa  aaaasssssssssss    p::::::pppppppp                         gggggggg::::::g    eeeeeeeeeeeeee           ttttttttttt  
                                                  p:::::p                                         g:::::g                                          
                                                  p:::::p                             gggggg      g:::::g                                          
                                                 p:::::::p                            g:::::gg   gg:::::g                                          
                                                 p:::::::p                             g::::::ggg:::::::g                                          
                                                 p:::::::p                              gg:::::::::::::g                                           
                                                 ppppppppp                                ggg::::::ggg                                             
                                                                                             gggggg                                                

This project is in an early development state so you can still expect some bugs in there.
Rasp-get includes wrappers for Debian (apt-get), ArchLinux (pacman) and RedHat (yum) which include the basic packagemanagement tasks.
It will be very easy to add support for other distributions by simply editing one of the included .function files.


    Usage:
        rasp-get [Action] [FileName(s) or Path on which to execute the action]
    
        Action:     (Alias:)   Descryption:
            install               Install a package or a list of packages
            remove (uninstall)    Remove a package or a list of packages
            localinstall (installpkg)  Install a local package or port
            wwwinstall            Download package from url and perform
                                  a localinstall
            sync                  Refresh the configured repositories
            upgrade               Update all upgradable packages
            search                Search the repositories for a package
            clean                 Clean the download cache
            depclean              Remove and clean orphaned packages
            help (--help) (-h)    Show this help text


Downloads:

For now the only way to obtain rasp-get is by grabbing the sources using GIT. 

	git clone git://git.code.sf.net/p/raspget/code raspget-code



Licence:
	BSD Open Source Licence; Use and fork any way you like, you deserve it ;)
	Don't forget to share!!!!!
