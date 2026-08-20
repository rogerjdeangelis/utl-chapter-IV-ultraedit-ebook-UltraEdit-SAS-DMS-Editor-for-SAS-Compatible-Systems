       /*--- Save my program
       c:/utl/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems 
       ---*/   
      
       UltraEdit SAS DMS Editor for SAS Compatible Systems 
      
       UltraEdit Version 2025.1.0.31 64-bit   (ribbon GUI)
       
       Too long to post, see
       https://github.com/rogerjdeangelis/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems
       
       Markdown file
       https://github.com/rogerjdeangelis/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems/blob/main/an-ultraedit-sas-dms-editor_3.md               
       
       PDF  
       https://github.com/rogerjdeangelis/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems/blob/main/an-ultraedit-sas-dms-editor_3.pdf
                   
       Workflowfour repositories
                   
       https://github.com/rogerjdeangelis/utl-chapter-I-configuration-and-ultraedit-setup-for-sas-compatible-systems
       https://github.com/rogerjdeangelis/utl-chapter-II-ultraedit-key-mapping-for-sas-compatible-systems
       https://github.com/rogerjdeangelis/utl-chapter-III-ultraedit-macros-javascript-for-sas-compatible-systems
       https://github.com/rogerjdeangelis/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems   
       
       If you want all the settings used in the github repositories download and ibstall the settings.
       Advanced > Backup Settings > Restore   
       
       https://github.com/rogerjdeangelis/utl-chapter-IV-ultraedit-ebook-UltraEdit-SAS-DMS-Editor-for-SAS-Compatible-Systems   
       
       Here is the final Cheat Sheet
       
           Window Functions
               1  Ctrl+C Copy, Ctrl+V Paste, Ctrl+X Cut, Ctrl+Z Undo, Ctrl+Y redo
               2  Shift Mouse Wheel Shifts Text left and right    
     
           Ehanced Key Mapping  

                0  Ctrl+Alt-T       Tile 3 windows lst, sas, log. You can customize further ie docked find, UltraEdit will remember,
                1  Ctrl+Alt+X       Run Highlighted Code 
                2  Ctrl+Alt+J       Run entire program with Jenner Aalytics
                3  Ctrl+Alt-2       Save Program using line 2 of program (to debug Advanced>Play Scripts>save_program_in_line_2 )
                4  Ctrl+A Space     Clear any window
                5  Ctrl+S           Save ( chapter II shows how to add versioning)  
                6  F12              save as
                7  Cltrl+F          Docked small persistent find box (very usefull)  
                8  Alt+F3           Find (note if you have selected text, only that text will be seaarched)
                9  Ctrl+R           find/replace (note if you have selected text, only that text will be seaarched)
               10  Ctrl+G           Go to line        
               11  Ctrl+F5          Convert selected text to lowercase
               12  Alt+F5           Convert selected text to uppercase
               13  Ctrl+Shift+D     Duplcate line
               14  Ctrl+E           Delete Line
               15  Ctrl+Alt+E       Mutiple consecutive spaces to one space
               16  Ctrl+B           Select matching [()] - plase cursor before bracket and ctrl+b 
               17  F3               Search Forward(easier than repeated clicls on NEXT in find replace)
               18  Ctrl+F3          Search backward
               19  Ctrl+Home        Cursor at the top of editor (not the top of the visible window)
               20  Ctrl+End         Cursor to the bottom of the editor    
               21  ctrl+Shift+End   Delete All lines to end of file in editor       
               22  Ctrl+H           Toggle Hex Mode   
               23  Ctrl+\           trim leading spaces works on selected lines or entire text
               24  Ctrl+N           Open an additional editor window
               25  Ctrl+K           Spell Check 
               26  Ctrl+shift+F     Find in files
               27  Ctrl+F7          Insert datetime at cursor
               28  F5               Capitalize the first letter of each word
               29  Alt+\            Counts all the words in the entire program       
               30  Ctrl+Q           Quick File Open      
               31  Ctrl+O           Open a File
               32  Ctrl Shift F4    Close all Files Open
               33  Alt+F12          Save All Open Files       
               34  Ctrl+Shift+P     Command Pallete (had to do it twice)
               35  F1               Help       
               36  F9               Run Dos Command
               37  F10              Run Windows Program                                                                                                                               
               38  CTRL+F11         Trim Leading Spaces
               39  Ctrl+p           Print
               50  Ctrl+M           Play Macro 
               41  Alt+F11          Compare files
               42  Ctrl+J           Flow lines (sas TF in prefix area, highlight lines ctrl-J)
               43  box              Create command box using autocomplete   
               44  Ctrl+Alt+L       Clear log and list (may have a line of residual text?)   
               45  Tab              Tab 4 spaces see below  
               46  Ctrl+Alt+C       Center Justify see below
               47  Ctrl+Alt+L       Left Justify see below
               48  Ctrl+Alt+I       Renter Justify see below
               49  Ctrl+Alt+8       Comment out a block of existing code
         
            d. Macros 
                1  Ctrl+Alt+E       Reduce mutiple blanks to single blank udes perl expressions. 
                                   Works on mutiple lines with shiftAlt +column mode
            e. Templates            
                                    edit > insert template > modify template > Sas 9 Modified
                1  box_             Ctrl + SPACE turn auto complete on. After you type box_ a blue box
                                    
                                     /*==========================================================================*/
                                     /*                                                                          */
                                     /*==========================================================================*/   
            Miscellaneous
                
                 1.  Autosave all open files every minute
                      Advanced > Settings > File Handling > Save
                      Automatic Save Time: 1 (change 0 to one)
             
                 2.  Assign four spaces to the tab key
                 
                     Advanced → Settings → Editor → Word Wrap/Tab Settings
                     Select extension for settings or default: Select sas from the pull down menu
                    
                     Use spaces in place of tabs; Check this
                    
                     Tab Stop value: 4
                     Indent spaces: 4
                    
                 3.  Right, Left or Center Text    
                 
                      Advanced > Settings                       
                       
                      Find: Key Mapping
                      Commands: CenterJustify
                      Press New Multi Key: Ctrl+Alt+C
                      Assign
                      
                      Find: Key Mapping
                      Commands: LeftJustify
                      Press New Multi Key: Ctrl+Alt+L
                      Assign               
                                     
                      Find: Key Mapping
                      Commands: RightJustify 
                      s New Multi Key:  Ctrl+Alt+I
                       Assign               
                     
                      You need column mode to define the width of the line
                      Remember the last line in the UE displays
                                                 
                      For Help, press F1                                    ln1,col80,C0 DOS utf-8 INS COL
                                                                                                       ===
                      If COL has a blue border column mode is on, without the blue border it is off
                      Toggle COL on.
                 
                      View > Ruler         
                                                                                            
                      0........10.......20...                          .......80
                                
                      Highlight the block from start to col 80  and enter ctrl+Alt+C.
                      You should see ln1,col80 at the very botom of UE display.
                            
                      This is the first Line
                          DMS Link UE
                      Roger                   
                                         This is the first Line                             
                                                   DMS Link UE                                  
                                                      Roger                                           
                 4.  Left Align a Block Of Lines   
                       
                       You need column mode on (don't forget to turn of after alignment)
                           
                       Advanced > Settings   
                                                                             
                       Find: Key Mapping
                       Commands: LeftAlign
                       Press New Multi Key: Ctrl+Alt+,  (The < is above the comma)
                       Assign      
                               
                       HighlLight this block of text and Ctrl+Alt+,         
                         This is the first Line 
                                    DMS Link UE      
                                      Roger                        
                                        
                         This i sthe result
                                        
                         This is the first Line                
                         DMS Link UE            
                         Roger                  
                  
                         TURN COLUMN MODE OFF
                         
                 5.  Comment a Block of SAS Code 
                       
                         Find: Key Mapping
                         Commands: LeftAlign
                         Press New Multi Key: Ctrl+Alt+8  (The asterisk is above)
                         Assign      
                                 
                         Hifhlight 
                                         
                         proc print data=sashelp.zipcode(obs=3);
                         Run;   
                       
                         Ctrl+Alt+8 
                       
                         /*  
                         proc print data=sashelp.zipcode(obs=3);
                         Run;   
                            */
