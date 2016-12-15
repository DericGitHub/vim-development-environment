# vim-development-environment

The target of the project is to quick-set a vim environment,include but not limited to color scheme ,cscope ,taglist ,winmanager


The original version I prefer to use shell to implement .
##Install
    bash install.sh
##USAGE
###cscope
  Cscope is a tool which has similar functions with ctags ,we could also treat it as ADVANCED ctags cause it's able to do more things than ctags .
  
  
  Step 1 ,change directory to your target location ,type "cscope -Rkbq" ,then there will be three extra files ,"cscope.in.out cscope.out cscope.po.out" .
  
  
  Step 2 ,open vim and use ":cs find {querytype} {name}" to jump to what you look forward .
  
  
  
            {querytype} stands for the type of {name}
            {querytype}   MEANS                                         KEYBOARD SHORTCUT
            s    -----    c symbol related to {name}                    [ctrl+\] s
            g    -----    defination of {name}                          [ctrl+\] g
            d    -----    the func which would call {name}              [ctrl+\] d
            c    -----    the func which would be called by {name}      [ctrl+\] c
            t    -----    treat {name} as a string                      [ctrl+\] t
            e    -----    use egrep to find {name}                      [ctrl+\] e
            f    -----    treat {name} as a file name                   [ctrl+\] f
            i    -----    search for those files would #include {name}  [ctrl+\] i
###winmanager
  A classical windows type environment for vim.  
  Quick press "w" and "m" in normal mode could toggle winmanager .
###taglist
  Taglist provides an overview of the structure of source code files and allows you to efficiently browse through source code files in different programming languages.  
  We have set the configuration of taglist ,you could just quick press "w" and "m" to open your winmanager which will load taglist automatically .
