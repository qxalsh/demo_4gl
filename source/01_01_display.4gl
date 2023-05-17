MAIN
    DISPLAY "Hello World 123!"
        CALL fgl_getkey() # wait for user to press a key or a button
    MENU # Create my menu 4GL statement
        COMMAND "option_1" "My Option 1" # 
            CALL fgl_winmessage("option_1","My Option 1", "Error")
        COMMAND "my_func()" "Tooltip"
            CALL my_func() 
        COMMAND "exit" "my exit"
            EXIT MENU
    END MENU
    DISPLAY "-end of main"
END MAIN

FUNCTION my_func()
    CALL fgl_winmessage("Func Title", "Body Text", "Info")
END FUNCTION    