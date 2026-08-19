---
title: "An UltraEdit SAS DMS Editor for SAS Compatible Systems"
author: "Roger J. DeAngelis"
---

## Table of Contents

[Preface](#preface)

[**CHAPTER I: CONFIGURATION AND ULTRAEDIT SETUP FOR SAS COMPATIBLE SYSTEMS**](#chapter-i)

- [I. Jenner Analytics Configuration Win 11 64-bit](#c1-i)
  - [a. Create environment variable](#c1-i-a)
    - [1. Open the environment variables dialog](#c1-i-a-1)
    - [2. Select Edit environment variables](#c1-i-a-2)
    - [3. User variables > Edit/Add](#c1-i-a-3)
    - [4. Enter the variable and value](#c1-i-a-4)
    - [5. Refresh the environment variable](#c1-i-a-5)
    - [6. Check the environment variable](#c1-i-a-6)
  - [b. Create a path environment variable](#c1-i-b)
    - [1. Open the environment variables dialog](#c1-i-b-1)
    - [2. Select edit environment variables](#c1-i-b-2)
    - [3. Select Environment variables](#c1-i-b-3)
    - [4. Add to Path in System variables](#c1-i-b-4)
  - [c. Create folder structures (sandbox)](#c1-i-c)
    - [1. c:/jnr/](#c1-i-c-1)
    - [2. c:/wpsoto](#c1-i-c-2)
    - [3. c:/wpscfg](#c1-i-c-3)
    - [4. d:/wpswrk](#c1-i-c-4)
    - [5. d:/wpswrkx](#c1-i-c-5)
  - [d. Key files](#c1-i-d)
    - [1. Copy the config file](#c1-i-d-1)
    - [2. Edit the local config file](#c1-i-d-2)
  - [e. Create c:/wpsoto/autoexec.sas](#c1-i-e)
    - [1. The autoexec file](#c1-i-e-1)
    - [2. Completion message](#c1-i-e-2)
- [II. UltraEdit Configuration Win 11 64-bit](#c1-ii)
  - [a. Download and install UltraEdit](#c1-ii-a)
  - [b. Make the Windows clipboard your default clipboard](#c1-ii-b)
  - [c. Create SAS DMS window vertical layout](#c1-ii-c)
- [III. Run a Simple SAS Compatible Program](#c1-iii)
  - [a. Turn line numbers on](#c1-iii-a)
  - [b. Run the program](#c1-iii-b)
  - [c. Immediate output](#c1-iii-c)
  - [d. Save all user customizations](#c1-iii-d)

[**CHAPTER II: ULTRAEDIT KEY MAPPING FOR SAS COMPATIBLE SYSTEMS**](#chapter-ii)

- [I. Miscellaneous](#c2-i)
  - [a. Turn line numbers on](#c2-i-a)
  - [b. Turn Windows clipboard on](#c2-i-b)
  - [c. List all default key mappings](#c2-i-c)
  - [d. Toggle Insert Mode and Column Mode](#c2-i-d)
  - [e. Automatically Update Changed Files](#c2-i-e)
  - [f. SAS highlighting](#c2-i-f)
- [II. Default Key-Mappings](#c2-ii)
  - [a. Missing block copy/paste](#c2-ii-a)
  - [b. List of default key mappings](#c2-ii-b)
- [III. User Key Mapping — Advanced > Settings > Key Mappings](#c2-iii)
  - [a. Create DMS layout lst/pgm/log](#c2-iii-a)
  - [b. Versioning](#c2-iii-b)
  - [c. Automatic save every minute](#c2-iii-c)
  - [d. Assign four spaces to the Tab key](#c2-iii-d)
  - [e. Right, Left and Center Justify](#c2-iii-e)
  - [f. Left Align a Block of Lines](#c2-iii-f)
  - [g. Comment a Block of SAS Code](#c2-iii-g)
- [IV. List of Key Mappings](#c2-iv)

[**CHAPTER III: ULTRAEDIT MACROS AND JAVASCRIPT FOR SAS COMPATIBLE SYSTEMS**](#chapter-iii)

- [I. Macros and Updated Move/Overlay/Insert Blocks of Code](#c3-i)
  - [a. Move/Overlay/Insert Blocks of code](#c3-i-a)
  - [b. Reduce multiple spaces to a single space](#c3-i-b)
  - [c. Using Templates to insert a box comment](#c3-i-c)
- [II. JavaScript Tools](#c3-ii)
  - [a. Clear log and list](#c3-ii-a)
  - [b. Setup Jenner CLI](#c3-ii-b)
  - [c. Run highlighted code](#c3-ii-c)
  - [d. Save program using path in line 2 of editor](#c3-ii-d)
- [III. List of Enhanced Functionality (Full Cheat Sheet)](#c3-iii)
  - [a. Block moves, shared windows hotkeys and mouse actions](#c3-iii-a)
    - [1. Move/overlay a block of text](#c3-iii-a-1)
    - [2. Copy, Paste, Cut, Undo, Redo](#c3-iii-a-2)
    - [3. Shift text left and right](#c3-iii-a-3)
  - [b. Enhanced Key Mapping](#c3-iii-b)
    - [1. Run Highlighted Code](#c3-iii-b-1)
    - [2. Run entire program with Jenner Analytics](#c3-iii-b-2)
    - [3. Save Program using line 2 of program](#c3-iii-b-3)
    - [4. Clear any window](#c3-iii-b-4)
    - [5. Save](#c3-iii-b-5)
    - [6. Save as](#c3-iii-b-6)
    - [7. Docked small persistent find box](#c3-iii-b-7)
    - [8. Find](#c3-iii-b-8)
    - [9. Find/replace](#c3-iii-b-9)
    - [10. Go to line](#c3-iii-b-10)
    - [11. Convert selected text to lowercase](#c3-iii-b-11)
    - [12. Convert selected text to uppercase](#c3-iii-b-12)
    - [13. Duplicate line](#c3-iii-b-13)
    - [14. Delete Line](#c3-iii-b-14)
    - [15. Multiple consecutive spaces to one space](#c3-iii-b-15)
    - [16. Select matching brackets](#c3-iii-b-16)
    - [17. Search forward](#c3-iii-b-17)
    - [18. Search backward](#c3-iii-b-18)
    - [19. Cursor to top of editor](#c3-iii-b-19)
    - [20. Cursor to bottom of editor](#c3-iii-b-20)
    - [21. Delete all lines to end of file](#c3-iii-b-21)
    - [22. Toggle Hex Mode](#c3-iii-b-22)
    - [23. Trim leading spaces](#c3-iii-b-23)
    - [24. Open an additional editor window](#c3-iii-b-24)
    - [25. Spell Check](#c3-iii-b-25)
    - [26. Find in files](#c3-iii-b-26)
    - [27. Insert datetime at cursor](#c3-iii-b-27)
    - [28. Capitalize the first letter of each word](#c3-iii-b-28)
    - [29. Word count for entire program](#c3-iii-b-29)
    - [30. Quick File Open](#c3-iii-b-30)
    - [31. Open a File](#c3-iii-b-31)
    - [32. Close all Files Open](#c3-iii-b-32)
    - [33. Save All Open Files](#c3-iii-b-33)
    - [34. Command Palette](#c3-iii-b-34)
    - [35. Help](#c3-iii-b-35)
    - [36. Run DOS Command](#c3-iii-b-36)
    - [37. Run Windows Program](#c3-iii-b-37)
    - [38. Trim Leading Spaces](#c3-iii-b-38)
    - [39. Print](#c3-iii-b-39)
    - [40. Play Macro](#c3-iii-b-40)
    - [41. Compare files](#c3-iii-b-41)
    - [42. Flow lines](#c3-iii-b-42)
    - [43. Create command box using autocomplete](#c3-iii-b-43)
    - [44. Clear log and list](#c3-iii-b-44)
    - [45. Tab 4 spaces](#c3-iii-b-45)
    - [46. Center Justify](#c3-iii-b-46)
    - [47. Left Justify](#c3-iii-b-47)
    - [48. Right Justify](#c3-iii-b-48)
    - [49. Comment out a block of existing code](#c3-iii-b-49)
  - [c. JavaScript and User Tools](#c3-iii-c)
    - [1. Run SAS program via Jenner Analytics](#c3-iii-c-1)
    - [2. Execute selected text via the Jenner CLI](#c3-iii-c-2)
    - [3. Clear log and list](#c3-iii-c-3)
    - [4. Save program using line 2 of the program](#c3-iii-c-4)
    - [5. Multiple consecutive spaces to one](#c3-iii-c-5)
  - [d. Macros](#c3-iii-d)
    - [1. Reduce multiple blanks to a single blank](#c3-iii-d-1)
  - [e. Templates](#c3-iii-e)
- [IV. Miscellaneous](#c3-iv)
  - [a. Autosave all open files every minute](#c3-iv-a)
  - [b. Assign four spaces to the Tab key](#c3-iv-b)
  - [c. Right, Left or Center Text](#c3-iv-c)
  - [d. Left Align a Block of Lines](#c3-iv-d)
  - [e. Comment a Block of SAS Code](#c3-iv-e)

[Index](#index)

---

# Preface {#preface}

Use this ebook as an overview and spend more time with the repositories. This ebook  a complete workflow for turning **UltraEdit** into a SAS Display Manager System (DMS)-style editor for SAS-compatible engines —  Jenner Analytics(jnr) and Altair SLC among them — as implemented by Roger J. DeAngelis across three GitHub repositories. All three chapters assume **UltraEdit Version 2025.1.0.31 64-bit** running in the **Contemporary** menu mode (ribbon: File, Home, Edit, Format, View, Coding, Project, Layout, Window, Advanced).

**GitHub:** [utl-chapter-I-configuration-and-ultraedit-setup-for-sas-compatible-systems](https://github.com/rogerjdeangelis/utl-chapter-I-configuration-and-ultraedit-setup-for-sas-compatible-systems)

**GitHub:** [utl-chapter-II-ultraedit-key-mapping-for-sas-compatible-systems](https://github.com/rogerjdeangelis/utl-chapter-II-ultraedit-key-mapping-for-sas-compatible-systems)

**GitHub:** [utl-chapter-III-ultraedit-macros-javascript-for-sas-compatible-systems](https://github.com/rogerjdeangelis/utl-chapter-III-ultraedit-macros-javascript-for-sas-compatible-systems)

---

# CHAPTER I: CONFIGURATION AND ULTRAEDIT SETUP FOR SAS COMPATIBLE SYSTEMS {#chapter-i}

`C:\jnr\current.lst`, `c:\jnr\current.sas`, and `c:\jnr\current.log` form a sandbox. To save production code elsewhere, press **Ctrl+Alt+2** to save the program to the path given on line 2 of the editor (see Chapter III for the JavaScript behind this).

Although UltraEdit does not have a true command line, it offers three levels of automation of increasing power: (1) macro record, (2) JavaScript scripting with UltraEdit's own commands, (3) JavaScript combined with external programs like SAS, Altair SLC, or Jenner Analytics. Note: submitting a program without making any changes to it will do nothing.

## I. Jenner Analytics Configuration Win 11 64-bit {#c1-i}

### a. Create environment variable {#c1-i-a}

#### 1. Open the environment variables dialog {#c1-i-a-1}

Windows 11 search box → type `environment variables`.

#### 2. Select Edit environment variables {#c1-i-a-2}

#### 3. User variables > Edit/Add {#c1-i-a-3}

#### 4. Enter the variable and value {#c1-i-a-4}

| Variable | Value |
|---|---|
| ` Jenner Analyticsjnr_CONFIG` | `C:\wpscfg\ Jenner Analyticsj_local.cfg` |

#### 5. Refresh the environment variable {#c1-i-a-5}

Open Task Manager (Ctrl+Alt+Delete), find *Windows Explorer*, right-click → **Restart** (this activates the path). If UltraEdit is open, close and restart it too.

#### 6. Check the environment variable {#c1-i-a-6}

Open a DOS command window (`cmd.exe`) and run `echo % Jenner Analytics_CONFIG%` — it should print `C:\wpscfg\ Jenner Analytics_local.cfg`.

### b. Create a path environment variable {#c1-i-b}

#### 1. Open the environment variables dialog {#c1-i-b-1}

Windows 11 search box → type `environment variables`.

#### 2. Select edit environment variables {#c1-i-b-2}

#### 3. Select Environment variables {#c1-i-b-3}

#### 4. Add to Path in System variables {#c1-i-b-4}

Click **Path** under System variables → **Edit** → **New** → add `C:\Program Files\ Jenner Analytics\jnr\2026\bin` → OK → Apply. Refresh Explorer the same way as in a.5 to activate the path.

### c. Create folder structures (sandbox) {#c1-i-c}

#### 1. c:/jnr/ {#c1-i-c-1}

`current.sas` (frozen left panel), `current.log` (frozen center panel), `current.lst` (frozen right panel) in UltraEdit.

#### 2. c:/wpsoto {#c1-i-c-2}

For autocall macros.

#### 3. c:/wpscfg {#c1-i-c-3}

For the config file.

#### 4. d:/wpswrk {#c1-i-c-4}

Temporary work directory.

#### 5. d:/wpswrkx {#c1-i-c-5}

Permanent work directory.

### d. Key files {#c1-i-d}

#### 1. Copy the config file {#c1-i-d-1}

Copy `C:\Program Files\ Jenner Analytics\jnr\2026\ Jenner Analyticsjnr.cfg` to `C:\wpscfg\ Jenner Analyticsjnr_local.cfg`.

#### 2. Edit the local config file {#c1-i-d-2}

Edit `C:\wpscfg\ Jenner Analyticsjnr_local.cfg` (the file pointed to by the ` Jenner Analyticsjnr_CONFIG` environment variable):

```
-WORK 'd:\wpswrk'
-set SASAUTOS ('!wpshome\sasmacro' 'c:/wpsoto')
-SASAUTOS (SASAUTOS)
-AUTOEXEC 'c:/wpsoto/autoexec.sas'
-SASUSER 'd:/wpsusr'
```

### e. Create c:/wpsoto/autoexec.sas {#c1-i-e}

#### 1. The autoexec file {#c1-i-e-1}

```sas
data _null_;
  putlog "autexec started" currtime;
run;

data _null_;
  file print;
  curr_time = put(time(), time8.);
  put    "LIST: "  curr_time;
  putlog "LOG:  "  curr_time;
run;

options sasautos=("c:/otojnr");
run;

libname workx "d:\wpswrkx";
libname sasuser "c:/etc";
```

#### 2. Completion message {#c1-i-e-2}

```sas
data _null_;
  putlog "autexec completed" currtime;
run;
```

## II. UltraEdit Configuration Win 11 64-bit {#c1-ii}

### a. Download and install UltraEdit {#c1-ii-a}

A free 7-day trial can later be activated with just the license key from the verification email. [https://www.ultraedit.com/catalog-product/ultraedit-sub/](https://www.ultraedit.com/catalog-product/ultraedit-sub/)

### b. Make the Windows clipboard your default clipboard {#c1-ii-b}

- File → Open → `c:/jnr/current.sas`
- In that window, press **Ctrl+0** (activates the Windows clipboard — note Ctrl+1 through 9 activate UltraEdit's own internal clipboards, which do not allow copy/paste outside UltraEdit)
- Click the UE icon at the very top left → **Close**
- Reopening UltraEdit makes the change permanent — you'll see `C0` in the status bar for `c:/jnr/current.sas`:

```
/**************************/
/* c:\jnr\current.sas     */
/* ...                    */
/**************************/
/*  ln1,col1,C0 DOS utf-8 */
/**************************/
```

### c. Create SAS DMS window vertical layout {#c1-ii-c}

Open all three sandbox files:

```
c:/jnr/current.sas   (frozen left panel)
c:/jnr/current.log   (frozen center panel)
c:/jnr/current.lst   (frozen right panel)
```

They'll appear cascaded. To tile vertically:

- Advanced → Settings → Key Mapping → Commands: **Tile Vertical**
- Enter `Ctrl+Alt+T` in "Press new multi-key" → Assign
- Click the yellow UE icon → Close

```
/**********************************************************************************/
/*    C:\jnr\current.lst     |     c:\jnr\current.sas    |    c:\jnr\current.log  */
/*                           |                           |                        */
/* ..                        |                           |                        */
/**********************************************************************************/
                               ln1,col1,C0 DOS utf-8
```

## III. Run a Simple SAS Compatible Program {#c1-iii}

### a. Turn line numbers on {#c1-iii-a}

View → Line Numbers.

Configure the run tool via Advanced (hammer icon) → User Tools → Configuration:

- **Menu Item Name:** `jnr`
- **Command Line:**
  ```
  wps %f -sasautos "c:/otojnr" -log "%p%n.log" -print "%p%n.lst" -work "d:/wpswrk" -sasuser c:\etc -autoexec c:/otojnr/autoexec.sas
  ```
- **Working directory:** `c:/jnr`

If jnr is the first tool configured, "jnr" maps to **User Tool 1** in Advanced → Settings (gear icon) → Key Mapping. Select **User Tool 1**, enter `Ctrl+Alt+J` in "press new key" → Assign → click the yellow UE icon → Close.

### b. Run the program {#c1-iii-b}

With this in `current.sas`:

```sas
data tst;
  x=2;
run;

proc print data=tst;
run;
```

Switch focus to `c:\jnr\current.sas` and press **Ctrl+Alt+J**.

### c. Immediate output {#c1-iii-c}

`current.lst` and `current.log` populate side by side, e.g.:

```
LIST: obs   x         LOG: NOTE: Copyright (c) 2026 Jenner Analytics Ltd, London
     ----   -              autexec started.
       1    2              NOTE: Wrote _null_ (0 rows, 0 columns).
                            NOTE: Option SASAUTOS changed to c:/otojnr.
                            NOTE: Library WORKX assigned path=d:\wpswrkx.
                            NOTE: Library SASUSER assigned path=c:/etc.
                            autexec completed.
                            NOTE: Wrote tst (1 rows, 1 columns).
                            NOTE: PROC PRINT completed: 1 observations printed
```

### d. Save all user customizations {#c1-iii-d}

Advanced → Backup Settings → Backup → Select All → Backup Directory: `c:/ver` → click **Backup**. When done, right-click the yellow UE icon → Close.

---

# CHAPTER II: ULTRAEDIT KEY MAPPING FOR SAS COMPATIBLE SYSTEMS {#chapter-ii}

**Related documentation:** [UltraEdit Macro Commands wiki](https://wiki.ultraedit.com/Macro_commands) · [Default keyboard shortcuts wiki](https://wiki.ultraedit.com/Keyboard_shortcuts)

## I. Miscellaneous {#c2-i}

### a. Turn line numbers on {#c2-i-a}

View → Line Numbers.

### b. Turn Windows clipboard on {#c2-i-b}

`Ctrl+0`. The status bar shows `C0` (clipboards 1–9 are UltraEdit-internal and don't allow copy/paste outside UltraEdit). Note the Quick Find dock, `Ctrl+F`.

### c. List all default key mappings {#c2-i-c}

Advanced → Settings → Key Mappings → **Show Key Mappings in editor** (also see the full list at the end of this repository).

### d. Toggle Insert Mode and Column Mode {#c2-i-d}

At the very bottom of the UltraEdit window:

```
For Help, press F1                                    ln1,col1,C0 DOS utf-8 ins col
```

`C0` (zero) = using the Windows clipboard. `INS`/`OVR` toggle whether typing inserts or overwrites. If `COL` has a blue border, Column Mode is on.

### e. Automatically Update Changed Files {#c2-i-e}

Advanced → Settings → File Handling → File Change Detection → check **Automatically Update Changed File**.

### f. SAS highlighting {#c2-i-f}

Download `sas.uew` from [ultraedit.com/downloads/extras/wordfiles](https://www.ultraedit.com/downloads/extras/wordfiles/) (or from this repository), then Advanced → Settings → Editor Display → Syntax Highlighting → "Highlight new file as" → select **SAS 9 Modified**.

## II. Default Key-Mappings {#c2-ii}

Full reference: [wiki.ultraedit.com/Keyboard_shortcuts](https://wiki.ultraedit.com/Keyboard_shortcuts).

### a. Missing block copy/paste {#c2-ii-a}

UltraEdit does not natively support copy/pasting a block of lines at a new cursor position at a specific column — see Chapter III for the JavaScript and macro workaround.

### b. List of default key mappings {#c2-ii-b}

| Key | Action |
|---|---|
| Column mode | Move/overlay a block of text — set before copying, inserting, overwriting, or pasting blocks |
| Ctrl+C / Ctrl+V / Ctrl+X / Ctrl+Z / Ctrl+Y | Copy / Paste / Cut / Undo / Redo |
| Shift + mouse wheel | Shift text left/right |
| Ctrl+A, Space | Clear any window |
| Ctrl+S | Save |
| F12 | Save as |
| Alt+F3 | Find |
| Ctrl+R | Find/replace |
| Ctrl+G | Go to line |
| Ctrl+F5 / Alt+F5 | Selected text to lowercase / uppercase |
| Ctrl+Shift+D | Duplicate line |
| Ctrl+J | Flow lines (like SAS TF in the prefix area — highlight lines, Ctrl+J) |
| Ctrl+B | Select matching `[()]` — cursor before bracket, Ctrl+B |
| F3 / Ctrl+F3 | Search forward / backward |
| Ctrl+Home / Ctrl+End | Cursor to top / bottom of editor |
| Ctrl+Shift+End | Delete all lines to end of file |
| Ctrl+H | Toggle Hex Mode |
| Alt+F11 | Compare files |
| Ctrl+\\ | Trim leading spaces (selection or entire text) |
| Ctrl+N | Open an additional editor window |
| Ctrl+K | Spell check |
| Ctrl+Shift+F | Find in files |
| Ctrl+F7 | Insert datetime at cursor |
| F5 | Capitalize first letter of each word |
| Alt+\\ | Word count for entire program |
| Ctrl+Q | Quick file open |
| Ctrl+O | Open a file |
| Ctrl+Shift+F4 | Close all open files |
| Alt+F12 | Save all open files |
| Ctrl+Shift+P | Command Palette |
| F1 | Help |
| F9 / F10 | Run DOS command / Run Windows program |
| Ctrl+F11 | Trim leading spaces |
| Ctrl+P | Print |
| Ctrl+M | Play macro |

## III. User Key Mapping — Advanced > Settings > Key Mappings {#c2-iii}

### a. Create DMS layout lst/pgm/log {#c2-iii-a}

Key Mapping → Commands: **Tile Vertical** → Press New Multi Key: `Ctrl+Alt+T`. Opening the three sandbox files and pressing Ctrl+Alt+T gives:

```
/**********************************************************************************/
/*  C:\jnr\current.lst   |   c:\jnr\current.sas  |  c:\jnr\current.log            */
/*                       |                       |                                */
/* ..                    |                       |                                */
/**********************************************************************************/
For Help, press F1                                    ln1,col1,C0 DOS utf-8 ins col
```

### b. Versioning {#c2-iii-b}

Make a change since the last save, or nothing happens:

- Advanced → Settings → File Handling → Backup
- Check **No Backup** only (leave other options on that line unchecked)
- Default Backup Directory: `c:\ver`
- Version Backup: check **on Save**
- Format: `$b$n_$y$m$d_$H$M_$c$e` (e.g. suffix `260816_0822_1`)

Each `Ctrl+S` produces a new version file, e.g. `c:/ver/current_260816_0822_1.sas`, then `_2`, etc.

### c. Automatic save every minute {#c2-iii-c}

Advanced → Settings → File Handling → Save → Automatic Save Time: `1`.

### d. Assign four spaces to the Tab key {#c2-iii-d}

Advanced → Settings → Editor → Word Wrap/Tab Settings → select `sas` from the extension pull-down → check **Use spaces in place of tabs** → Tab Stop value: `4`, Indent spaces: `4`.

### e. Right, Left and Center Justify {#c2-iii-e}

Key Mapping → assign:

- `CenterJustify` → `Ctrl+Alt+C`
- `LeftJustify` → `Ctrl+Alt+L`
- `RightJustify` → `Ctrl+Alt+R`

Column mode defines the line width used. Toggle Column Mode on (status bar `COL` shows a blue border when active), use View → Ruler to gauge the column, highlight the block, then apply the hotkey.

### f. Left Align a Block of Lines {#c2-iii-f}

Key Mapping → `LeftAlign` → `Ctrl+Alt+,` (comma). Turn Column Mode on first, off after.

### g. Comment a Block of SAS Code {#c2-iii-g}

Key Mapping → assign a command to `Ctrl+Alt+8` (the asterisk key) to wrap a highlighted block in `/* ... */`.

## IV. List of Key Mappings {#c2-iv}

A representative excerpt of UltraEdit's full default key-mapping table (command name in the third column matches Advanced → Settings → Key Mapping's Commands list):

| Shortcut | Description | Command |
|---|---|---|
| Alt+Ctrl+, | Left align | FormatLeft |
| Alt+Ctrl+8 | Block comment selection | EditCommentSelection |
| Alt+Ctrl+C | Center justify | ColumnCenterJustify |
| Alt+Ctrl+J | User tool 1 | AdvancedUserTool1 |
| Alt+Ctrl+L | Left justify | ColumnLeftJustify |
| Alt+Ctrl+R | Right justify | ColumnRightJustify |
| Alt+Ctrl+T | Tile vertical | WindowTileVertically |
| Ctrl+A | Select all | EditSelectAll |
| Ctrl+C / Ctrl+V / Ctrl+X | Copy / Paste / Cut | EditCopy / EditPaste / EditCut |
| Ctrl+E | Delete line | EditDeleteLine |
| Ctrl+F | Quick find | SearchQuickFind |
| Ctrl+G | Goto | SearchGoto |
| Ctrl+J | Join lines | EditJoinLines |
| Ctrl+M | Play again | MacroPlay |
| Ctrl+R | Replace | SearchReplace |
| Ctrl+RETURN | Insert line | InsertLine |
| Ctrl+S | Save | FileSave |
| Ctrl+Shift+P | Open command palette | Command Palette Open |
| Ctrl+Shift+Z | Scripts | ModifyScripts |
| Ctrl+/ | Trim trailing spaces | FormatTrimTrailingSpaces |
| Ctrl+\\ | Trim leading spaces | FormatTrimLeadingSpaces |
| F9 | DOS command | AdvancedRunDosCmd |
| F10 | Run Windows program | AdvancedRunWindowsProgram |

*(Full list available in the source repository README.)*

---

# CHAPTER III: ULTRAEDIT MACROS AND JAVASCRIPT FOR SAS COMPATIBLE SYSTEMS {#chapter-iii}

To save production code elsewhere, press **Ctrl+Alt+2** to save the program to the path on line 2 of the editor — if no confirmation pop-up appears, the program was not saved.

**Tiling tip:** popup windows and JavaScript output logs can distort the three-panel layout. Close any popups (click X, upper-left), then press Ctrl+Alt+T to re-tile — sometimes twice, to maximize. UltraEdit will not vertically tile more than three windows, so reduce open windows to three first. UltraEdit can also be spread across three monitors.

**On the Command Palette:** UltraEdit is close to having a command line via `Ctrl+Shift+P`, but the palette cannot be docked, filtered beyond name search, or reordered.

## I. Macros and Updated Move/Overlay/Insert Blocks of Code {#c3-i}

### a. Move/Overlay/Insert Blocks of code {#c3-i-a}

Set Column Mode on, place the cursor before the first character of the block, hold **Shift+Alt** and drag to highlight, then `Ctrl+C` to copy and `Ctrl+V` to paste at the destination. Example — turning a two-column sandbox into a three-column one this way:

```
/******************************************************************/
/* C:\jnr\current.lst | c:\jnr\current.sas | c:\jnr\current.log   */
/*                    |                    |                      */
/* ..                 |                    |                      */
/******************************************************************/
```

### b. Reduce multiple spaces to a single space {#c3-i-b}

Macro + Perl regex. Advanced → Configure (macro section) → **Configure**:

```
Macro name: compbl

IfSel
HexOff
ColumnModeOn
PerlReOn
Find RegExp SelectText " {2,}"
Replace All " "
UltraEditReOn
ColumnModeOff
EndIf

HotKey: Ctrl+Alt+E
```

Test: highlight (Alt-drag) lines like `1       2  3     5` and press Ctrl+Alt+E to collapse runs of spaces to one. Save the macro to disk in a dedicated folder (e.g. `c:/mac`) via Configure → **Save All**, and set Advanced → Configure → Macro Settings → Macro Filename to `C:\mac\compbl.mac`. Close and reopen UltraEdit once after this setup.

### c. Using Templates to insert a box comment {#c3-i-c}

Edit → Insert Template → Modify Template → Group: **SAS 9 Modified** (or Global if not using the SAS wordfile) → `+` to add a new template. Content (leave a blank line before the first line):

```
/*==========================================================================*/
/*                                                                          */
/*==========================================================================*/
```

Enable Advanced → Settings → Templates → **auto complete**. Typing `box` anywhere in the editor pops up an autocomplete suggestion; pressing Enter inserts the box comment.

## II. JavaScript Tools {#c3-ii}

All scripts are saved to `C:\Program Files\IDM Computer Solutions\UltraEdit\scripts\` — where UltraEdit looks for them — then registered via **Advanced → All Scripts → Add**, selecting the file, and assigning a hotkey in the HotKey column.

### a. Clear log and list {#c3-ii-a}

`loglst.js`, hotkey `Ctrl+Alt+L`:

```javascript
var files = [
    "C:\\jnr\\current.log",
    "C:\\jnr\\current.lst"
];

for (var i = 0; i < files.length; i++) {
    UltraEdit.open(files[i]);
    UltraEdit.activeDocument.selectAll();
    UltraEdit.activeDocument.deleteText();
    UltraEdit.save();
}
```

### b. Setup Jenner CLI {#c3-ii-b}

Advanced (hammer icon) → User Tools → Configuration:

- **Menu Item Name:** `jnr`
- **Command Line:**
  ```
  jenner %f -sasautos "c:/otojnr" -log "%p%n.log" -print "%p%n.lst" -work "d:/wpswrk" -sasuser c:\etc -autoexec c:/otojnr/autoexec.sas
  ```
- **Working directory:** `c:/jnr`

Map it to a hotkey via Advanced → Settings → Toolbar/Menu → Key Mappings → select **User Tool 1** → `Ctrl+Alt+J` → Assign.

### c. Run highlighted code {#c3-ii-c}

`runselection.js`, hotkey `Ctrl+Alt+X`:

```javascript
var sourceDoc  = UltraEdit.activeDocument;
var sasCode    = sourceDoc.selection;

UltraEdit.messageBox(sasCode);   // TEMPORARY — check this shows only your highlighted code

var tempProgram = "C:\\utl\\runsas_selection.sas";
var logFile     = "C:\\otojnr\\current.log";
var lstFile     = "C:\\otojnr\\current.lst";

if (!sasCode || sasCode.length === 0) {
    UltraEdit.messageBox("No text selected — highlight some SAS code first.");
} else {
    UltraEdit.closeFile(logFile, 0);
    UltraEdit.closeFile(lstFile, 0);

    UltraEdit.newFile();
    UltraEdit.activeDocument.write(sasCode);
    UltraEdit.saveAs(tempProgram);
    UltraEdit.closeFile(tempProgram, 0);

    UltraEdit.runTool("run_selection");

    UltraEdit.open(logFile);
    UltraEdit.open(lstFile);
}
```

Highlight code (Column Mode off, include leading spaces) and press Ctrl+Alt+X, e.g.:

```sas
data x;
   x=2;
run;
proc print data=x;
run;
```

produces populated `current.lst`/`current.log` panels with the standard Jenner Analytics NOTE/log output.

### d. Save program using path in line 2 of editor {#c3-ii-d}

`save_program_in_line_2.js`, hotkey `Ctrl+Alt+2`. If a confirmation pop-up doesn't appear, the program was **not** saved:

```javascript
UltraEdit.outputWindow.showStatus = false;
UltraEdit.outputWindow.showWindow();

if (!UltraEdit.activeDocument) {
    UltraEdit.outputWindow.write("ERROR: No active document.");
    UltraEdit.messageBox("No active document.");
} else {
    var sourceDoc = UltraEdit.activeDocument;
    var savedLine = sourceDoc.currentLineNum;
    var savedColumn = sourceDoc.currentColumnNum;

    sourceDoc.selectAll();
    var programText = sourceDoc.selection;
    sourceDoc.gotoLine(savedLine, savedColumn);

    var lines = programText.split(/\r\n|\n|\r/);

    if (lines.length < 2) {
        UltraEdit.outputWindow.write("ERROR: The document has no line 2.");
        UltraEdit.messageBox("The active document has no line 2.");
    } else {
        var targetFile = lines[1].replace(/^\s+|\s+$/g, "");

        UltraEdit.outputWindow.write("Target file read from line 2: [" + targetFile + "]");

        if (targetFile.length === 0) {
            UltraEdit.outputWindow.write("ERROR: Line 2 is blank.");
            UltraEdit.messageBox("Line 2 is blank.\r\n\r\nPut the full target pathname on line 2.");
        } else if (!/^[A-Za-z]:[\\/]/.test(targetFile)) {
            UltraEdit.outputWindow.write("ERROR: Not a full Windows path: [" + targetFile + "]");
            UltraEdit.messageBox("Line 2 is not a full Windows file path:\r\n\r\n[" + targetFile + "]");
        } else {
            UltraEdit.newFile();
            UltraEdit.activeDocument.write(programText);

            UltraEdit.outputWindow.write("Saving copy as: [" + targetFile + "]");
            UltraEdit.saveAs(targetFile);
            UltraEdit.outputWindow.write("Save command completed: [" + targetFile + "]");

            UltraEdit.messageBox("Saved copy to:\r\n" + targetFile);
        }
    }
}
```

Place focus on the editor, ensure the program has been changed since the last save, and press Ctrl+Alt+2. The output window at the bottom of UltraEdit confirms via `Scripting engine: Using SpiderMonkey`.

## III. List of Enhanced Functionality (Full Cheat Sheet) {#c3-iii}

### a. Block moves, shared windows hotkeys and mouse actions {#c3-iii-a}

#### 1. Move/overlay a block of text {#c3-iii-a-1}

Column Mode on → cursor before the block → Shift+Alt drag → Ctrl+C → Ctrl+V

#### 2. Copy, Paste, Cut, Undo, Redo {#c3-iii-a-2}

Ctrl+C / Ctrl+V / Ctrl+X / Ctrl+Z / Ctrl+Y

#### 3. Shift text left and right {#c3-iii-a-3}

Shift + mouse wheel

### b. Enhanced Key Mapping {#c3-iii-b}

#### 1. Run Highlighted Code {#c3-iii-b-1}
`Ctrl+Alt+X`

#### 2. Run entire program with Jenner Analytics {#c3-iii-b-2}
`Ctrl+Alt+J`

#### 3. Save Program using line 2 of program {#c3-iii-b-3}
`Ctrl+Alt+2` (debug via Advanced → Play Scripts → save_program_in_line_2)

#### 4. Clear any window {#c3-iii-b-4}
`Ctrl+A, Space`

#### 5. Save {#c3-iii-b-5}
`Ctrl+S` (Chapter II shows how to add versioning)

#### 6. Save as {#c3-iii-b-6}
`F12`

#### 7. Docked small persistent find box {#c3-iii-b-7}
`Ctrl+F` — very useful

#### 8. Find {#c3-iii-b-8}
`Alt+F3` (if text is selected, only that text is searched)

#### 9. Find/replace {#c3-iii-b-9}
`Ctrl+R` (if text is selected, only that text is searched)

#### 10. Go to line {#c3-iii-b-10}
`Ctrl+G`

#### 11. Convert selected text to lowercase {#c3-iii-b-11}
`Ctrl+F5`

#### 12. Convert selected text to uppercase {#c3-iii-b-12}
`Alt+F5`

#### 13. Duplicate line {#c3-iii-b-13}
`Ctrl+Shift+D`

#### 14. Delete Line {#c3-iii-b-14}
`Ctrl+E`

#### 15. Multiple consecutive spaces to one space {#c3-iii-b-15}
`Ctrl+Alt+E`

#### 16. Select matching brackets {#c3-iii-b-16}
`Ctrl+B` — place cursor before the bracket, `[()]`

#### 17. Search forward {#c3-iii-b-17}
`F3` — easier than repeatedly clicking Next in Find/Replace

#### 18. Search backward {#c3-iii-b-18}
`Ctrl+F3`

#### 19. Cursor to top of editor {#c3-iii-b-19}
`Ctrl+Home` (not the top of the visible window)

#### 20. Cursor to bottom of editor {#c3-iii-b-20}
`Ctrl+End`

#### 21. Delete all lines to end of file {#c3-iii-b-21}
`Ctrl+Shift+End`

#### 22. Toggle Hex Mode {#c3-iii-b-22}
`Ctrl+H`

#### 23. Trim leading spaces {#c3-iii-b-23}
`Ctrl+\` — works on selected lines or entire text

#### 24. Open an additional editor window {#c3-iii-b-24}
`Ctrl+N`

#### 25. Spell Check {#c3-iii-b-25}
`Ctrl+K`

#### 26. Find in files {#c3-iii-b-26}
`Ctrl+Shift+F`

#### 27. Insert datetime at cursor {#c3-iii-b-27}
`Ctrl+F7`

#### 28. Capitalize the first letter of each word {#c3-iii-b-28}
`F5`

#### 29. Word count for entire program {#c3-iii-b-29}
`Alt+\`

#### 30. Quick File Open {#c3-iii-b-30}
`Ctrl+Q`

#### 31. Open a File {#c3-iii-b-31}
`Ctrl+O`

#### 32. Close all Files Open {#c3-iii-b-32}
`Ctrl+Shift+F4`

#### 33. Save All Open Files {#c3-iii-b-33}
`Alt+F12`

#### 34. Command Palette {#c3-iii-b-34}
`Ctrl+Shift+P` (may need to press it twice)

#### 35. Help {#c3-iii-b-35}
`F1`

#### 36. Run DOS Command {#c3-iii-b-36}
`F9`

#### 37. Run Windows Program {#c3-iii-b-37}
`F10`

#### 38. Trim Leading Spaces {#c3-iii-b-38}
`Ctrl+F11`

#### 39. Print {#c3-iii-b-39}
`Ctrl+P`

#### 40. Play Macro {#c3-iii-b-40}
`Ctrl+M`

#### 41. Compare files {#c3-iii-b-41}
`Alt+F11`

#### 42. Flow lines {#c3-iii-b-42}
`Ctrl+J` — like SAS TF in the prefix area; highlight lines then Ctrl+J

#### 43. Create command box using autocomplete {#c3-iii-b-43}
Type `box`

#### 44. Clear log and list {#c3-iii-b-44}
`Ctrl+Alt+L` (may leave a line of residual text)

#### 45. Tab 4 spaces {#c3-iii-b-45}
`Tab` — see II.d / III.b for setup

#### 46. Center Justify {#c3-iii-b-46}
`Ctrl+Alt+C` — see III.d

#### 47. Left Justify {#c3-iii-b-47}
`Ctrl+Alt+L` — see III.d

#### 48. Right Justify {#c3-iii-b-48}
`Ctrl+Alt+I` — see III.d

#### 49. Comment out a block of existing code {#c3-iii-b-49}
`Ctrl+Alt+8`

### c. JavaScript and User Tools {#c3-iii-c}

#### 1. Run SAS program via Jenner Analytics {#c3-iii-c-1}

`Ctrl+Alt+J`

#### 2. Execute selected text via the Jenner CLI {#c3-iii-c-2}

`Ctrl+Alt+X`

#### 3. Clear log and list {#c3-iii-c-3}

`Ctrl+Alt+L`

#### 4. Save program using line 2 of the program {#c3-iii-c-4}

`Ctrl+Alt+2`

#### 5. Multiple consecutive spaces to one {#c3-iii-c-5}

`Ctrl+Alt+E`

### d. Macros {#c3-iii-d}

#### 1. Reduce multiple blanks to a single blank {#c3-iii-d-1}

`Ctrl+Alt+E` — uses Perl expressions; works across multiple lines with Shift+Alt column-mode selection

### e. Templates {#c3-iii-e}

1. Edit → Insert Template → Modify Template → SAS 9 Modified group. Enable auto-complete (Ctrl+Space), then typing `box_` pops an autocomplete suggestion for the box-comment template.

## IV. Miscellaneous {#c3-iv}

### a. Autosave all open files every minute {#c3-iv-a}

Advanced → Settings → File Handling → Save → Automatic Save Time: `1`.

### b. Assign four spaces to the Tab key {#c3-iv-b}

Advanced → Settings → Editor → Word Wrap/Tab Settings → extension `sas` → check **Use spaces in place of tabs** → Tab Stop value `4`, Indent spaces `4`.

### c. Right, Left or Center Text {#c3-iv-c}

Key Mapping: `CenterJustify` → `Ctrl+Alt+C`; `LeftJustify` → `Ctrl+Alt+L`; `RightJustify` → `Ctrl+Alt+I`. Requires Column Mode on to define line width (status bar `COL` shows blue border when active); use View → Ruler to gauge columns.

### d. Left Align a Block of Lines {#c3-iv-d}

Key Mapping: `LeftAlign` → `Ctrl+Alt+,`. Column Mode on before, off after.

### e. Comment a Block of SAS Code {#c3-iv-e}

Key Mapping: assign to `Ctrl+Alt+8`. Highlight:

```sas
proc print data=sashelp.zipcode(obs=3);
run;
```

Press Ctrl+Alt+8 to get:

```sas
/*
proc print data=sashelp.zipcode(obs=3);
run;
   */
```

---

# Index {#index}

-  Jenner Analytics JNR — I
- Autocall macros — I
- Autosave — I, II, III
- Backup / versioning — II
- Block comment — II, III
- Box-comment template — III
- Clear log and list — III
- Column Mode — I, II, III
- Command Palette — III
- DMS layout (vertical tile) — I, II
- Environment variables — I
- File Change Detection — II
- Jenner Analytics / Jenner CLI — I, III
- Justify (left/right/center) — II, III
- Key Mapping — II
- Left-align block — II, III
- Macros — III
- Perl regular expressions — III
- SAS syntax highlighting (`sas.uew`) — II
- Save program via line 2 (`Ctrl+Alt+2`) — I, III
- Sandbox (`current.sas`/`.log`/`.lst`) — I, II, III
- Tab / indent settings — II, III
- Templates — III
- Tile vertical (`Ctrl+Alt+T`) — I, II
- User Tools — I, III
- Windows clipboard (`Ctrl+0`) — I, II

---

*End of ebook*
