Script started on 2020-02-06 17:02:52-0500
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ cat rec_area.adb
-- rec_area.adb computes the area of a rectangle.
--
-- Input: The width and height of the rect.
-- Precondition: The width and height is a positive number.
-- Output: The area of the rectangle.
--
-- Created by: Sinai Park (sp46)
-- Date:Feb 6 2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rec_area is

   width, height, area : float; 

   -- function recArea computes a circle's area, given its radius
   -- Parameter: w, a float and a h, a float
   -- Precondition: w >= 0.0 h >= 0.0
   -- Return: the area of the circle whose width is w and height is h
   ----------------------------------------------------
   function recArea(w: in float; h: in float) return float is 
   begin
      return w * h;
   end recArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a rectangle,");
   --user input for its width
   Put("enter its width: ");
   Get(width);
   
   --user input for its height
   Put("enter its height: ");
   Get(height);

   area := recArea(width, height);

   New_Line;
   Put("The rectangle's area is ");
   Put(area);
   New_Line; New_Line; 

   Put("The rectangle's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end rec_area;
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ gnatmake rec_area
x86_64-linux-gnu-gcc-7 -c rec_area.adb
x86_64-linux-gnu-gnatbind-7 -x rec_area.ali
x86_64-linux-gnu-gnatlink-7 rec_area.ali
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ gnatmake[K[K[K[K[K[K[K[Kgnatmake
Usage: gnatmake  opts  name  {[-cargs opts] [-bargs opts] [-largs opts] [-margs opts]}

  name is one or more file name from which you can omit the .adb or .ads suffix

gnatmake switches:
  --version   Display version and exit
  --help      Display usage and exit

  -a       Consider all files, even readonly ali files
  -b       Bind only
  -B       Build, bind and link full project
  -c       Compile only
  -C       Cache source mappings: invoke compiler with temp mapping file
  -C=mapp  Cache source mappings: invoke compiler with mapping file mapp
  -d       Display compilation progress
  -D dir   Specify dir as the object directory
  -eI      Index of unit in multi-unit source file
  -eL      Follow symbolic links when processing project files
  -eS      Echo commands to stdout instead of stderr
  -f       Force recompilations of non predefined units
  -F       Full project path name in brief error messages
  -i       In place. Replace existing ali file, or put it with source
  -jnum    Use nnn processes to compile
  -k       Keep going after compilation errors
  -l       Link only
  -m       Minimal recompilation
  -M       List object file dependences for Makefile
  -n       Check objects up to date, output next file to compile if not
  -o name  Choose an alternate executable name
  -p       Create missing obj, lib and exec dirs
  -Pproj   Use GNAT Project File proj
  -q       Be quiet/terse
  -R       Do not use a run_path_option when linking
  -s       Recompile if compiler switches have changed
  -u       Unique compilation, only compile the given files
  -U       Unique compilation for all sources of all projects
  -v       Display reasons for all (re)compilations
  -vl      Verbose output (low verbosity)
  -vm      Verbose output (medium verbosity)
  -vh      Equivalent to -v (high verbosity)
  -vPx     Specify verbosity when parsing GNAT Project Files
  -we      Treat all warnings as errors
  -wn      Normal warning mode (cancels -we/-ws)
  -ws      Suppress all warnings
  -x       Allow compilation of needed units external to the projects
  -Xnm=val Specify an external reference for GNAT Project Files
  -z       No main subprogram (zero main)

  --create-map-file   Create map file mainprog.map
  --create-map-file=mapfile
                      Create map file mapfile
  --keep-temp-files   Keep temporary files
  --GCC=command       Use this gcc command
  --GNATBIND=command  Use this gnatbind command
  --GNATLINK=command  Use this gnatlink command

Project, Source and Library search path switches:
  -aPdir    Add directory dir to project search path
  -aLdir    Skip missing library sources if ali in dir
  -Adir     like -aLdir -aIdir
  -aOdir    Specify library/object files search path
  -aIdir    Specify source files search path
  -Idir     Like -aIdir -aOdir
  -I-       Don't look for sources & library files in the default directory
  -Ldir     Look for program libraries also in dir
  -nostdinc Don't look for sources in the system default directory
  -nostdlib Don't look for library files in the system default directory
  --RTS=dir specify the default source and object search path
  --subdirs=dir real obj/lib/exec dirs are subdirs
  --source-info=file specify a source info file
  --unchecked-shared-lib-imports
            Allow shared libraries to import static libraries

To pass an arbitrary switch to the Compiler, Binder or Linker:
  -cargs opts   opts are passed to the compiler
  -bargs opts   opts are passed to the binder
  -largs opts   opts are passed to the linker
  -margs opts   opts are passed to gnatmake

Compiler switches (passed to the compiler by gnatmake):

  -g            Generate debugging information
  -Idir         Specify source files search path
  -I-           Do not look for sources in current directory
  -O[0123]      Control the optimization level

  -gnata    Assertions enabled. Pragma Assert/Debug to be activated
  -gnatA    Avoid processing gnat.adc, if present file will be ignored
  -gnatb    Generate brief messages to stderr even if verbose mode set
  -gnatB    Assume no bad (invalid) values except in 'Valid attribute
  -gnatc    Check syntax and semantics only (no code generation)
  -gnatC    Generate CodePeer intermediate format (no code generation)
  -gnatd?   Compiler debug option ? ([.]a-z,A-Z,0-9), see debug.adb
  -gnatD    Debug expanded generated code (max line length = 72)
  -gnatDnn  Debug expanded generated code (max line length = nn)
  -gnateA   Aliasing checks on subprogram parameters
  -gnatec=? Specify configuration pragmas file, e.g. -gnatec=/x/f.adc
  -gnateC   Generate CodePeer messages (ignored without -gnatcC)
  -gnated   Disable synchronization of atomic variables
  -gnateD?  Define or redefine preprocessing symbol, e.g. -gnateDsym=val
  -gnateE   Generate extra information in exception messages
  -gnatef   Full source path in brief error messages
  -gnateF   Check overflow on predefined Float types
  -gnateG   Generate preprocessed source
  -gnateinn Set maximum number of instantiations to nn
  -gnateInn Index in multi-unit source, e.g. -gnateI2
  -gnatel   Turn on info messages on generated Elaborate[_All] pragmas
  -gnateL   Turn off info messages on generated Elaborate[_All] pragmas
  -gnatem=? Specify mapping file, e.g. -gnatem=mapping
  -gnatep=? Specify preprocessing data file, e.g. -gnatep=prep.data
  -gnateP   Pure/Prelaborate errors generate warnings rather than errors
  -gnateS   Generate SCO (Source Coverage Obligation) information
  -gnatet=? Write target dependent information file ?, e.g. gnatet=tdf
  -gnateT=? Read target dependent information file ?, e.g. gnateT=tdf
  -gnateu   Ignore unrecognized style/validity/warning switches
  -gnateV   Validity checks on subprogram parameters
  -gnateY   Ignore all Style_Checks pragmas in source
  -gnatE    Dynamic elaboration checking mode enabled
  -gnatf    Full errors. Verbose details, all undefined references
  -gnatF    Force all import/export external names to all uppercase
  -gnatg    GNAT implementation mode (used for compiling GNAT units)
  -gnatG    Output generated expanded code (max line length = 72)
  -gnatGnn  Output generated expanded code (max line length = nn)
  -gnath    Output this usage (help) information
  -gnati?   Identifier char set (?=1/2/3/4/5/8/9/p/f/n/w)
  -gnatI    Ignore all representation clauses
  -gnatjnn  Format error and warning messages to fit nn character lines
  -gnatk    Limit file names to nn characters (k = krunch)
  -gnatl    Output full source listing with embedded error messages
  -gnatl=f  Output full source listing to specified file
  -gnatL    List corresponding source text in -gnatG or -gnatD output
  -gnatmnn  Limit number of detected errors/warnings to nn (1-999999)
  -gnatn[?] Enable pragma Inline (both within and across units, ?=1/2)
  -gnato0   Disable overflow checking
  -gnato    Enable overflow checking in STRICT (-gnato1) mode (default)
  -gnato?   Enable overflow checks in STRICT/MINIMIZED/ELIMINATED (1/2/3) mode
  -gnato??  Set mode for general/assertion expressions separately
  -gnatp    Suppress all checks
  -gnatP    Generate periodic calls to System.Polling.Poll
  -gnatq    Don't quit, try semantics, even if parse errors
  -gnatQ    Don't quit, write ali/tree file even if compile errors
  -gnatr    Treat pragma Restrictions as Restriction_Warnings
  -gnatR?   List rep info (?=0/1/2/3/m for none/types/all/variable/mechanisms)
  -gnatR?s  List rep info to file.rep instead of standard output
  -gnats    Syntax check only
  -gnatS    Print listing of package Standard
  -gnatt    Tree output file to be generated
  -gnatTnn  All compiler tables start at nn times usual starting size
  -gnatu    List units for this compilation
  -gnatU    Enable unique tag for error messages
  -gnatv    Verbose mode. Full error output with source lines to stdout
  -gnatVxx  Enable selected validity checking mode, xx = list of parameters:
        a    turn on all validity checking options
        c    turn on checking for copies
        C    turn off checking for copies
        d    turn on default (RM) checking
        D    turn off default (RM) checking
        e    turn on checking for elementary components
        E    turn off checking for elementary components
        f    turn on checking for floating-point
        F    turn off checking for floating-point
        i    turn on checking for in params
        I    turn off checking for in params
        m    turn on checking for in out params
        M    turn off checking for in out params
        o    turn on checking for operators/attributes
        O    turn off checking for operators/attributes
        p    turn on checking for parameters
        P    turn off checking for parameters
        r    turn on checking for returns
        R    turn off checking for returns
        s    turn on checking for subscripts
        S    turn off checking for subscripts
        t    turn on checking for tests
        T    turn off checking for tests
        n    turn off all validity checks (including RM)
  -gnatwxx  Enable selected warning modes, xx = list of parameters:
        *    indicates default setting
        +    indicates warning flag included in -gnatwa
        a    turn on all info/warnings marked below with +
        A    turn off all optional info/warnings
        .a*+ turn on warnings for failing assertion
        .A   turn off warnings for failing assertion
        b+   turn on warnings for bad fixed value (not multiple of small)
        B*   turn off warnings for bad fixed value (not multiple of small)
        .b*+ turn on warnings for biased representation
        .B   turn off warnings for biased representation
        c+   turn on warnings for constant conditional
        C*   turn off warnings for constant conditional
        .c+  turn on warnings for unrepped components
        .C*  turn off warnings for unrepped components
        d    turn on warnings for implicit dereference
        D*   turn off warnings for implicit dereference
        .d   turn on tagging of warnings with -gnatw switch
        .D*  turn off tagging of warnings with -gnatw switch
        e    treat all warnings (but not info) as errors
        .e   turn on every optional info/warning (no exceptions)
        f+   turn on warnings for unreferenced formal
        F*   turn off warnings for unreferenced formal
        .f   turn on warnings for suspicious Subp'Access
        .F*  turn off warnings for suspicious Subp'Access
        g*+  turn on warnings for unrecognized pragma
        G    turn off warnings for unrecognized pragma
        .g   turn on GNAT warnings
        h    turn on warnings for hiding declarations
        H*   turn off warnings for hiding declarations
        .h   turn on warnings for holes in records
        .H*  turn off warnings for holes in records
        i*+  turn on warnings for implementation unit
        I    turn off warnings for implementation unit
        .i*+ turn on warnings for overlapping actuals
        .I   turn off warnings for overlapping actuals
        j+   turn on warnings for obsolescent (annex J) feature
        J*   turn off warnings for obsolescent (annex J) feature
        k+   turn on warnings on constant variable
        K*   turn off warnings on constant variable
        .k   turn on warnings for standard redefinition
        .K*  turn off warnings for standard redefinition
        l    turn on warnings for elaboration problems
        L*   turn off warnings for elaboration problems
        .l   turn on info messages for inherited aspects
        .L*  turn off info messages for inherited aspects
        m+   turn on warnings for variable assigned but not read
        M*   turn off warnings for variable assigned but not read
        .m*+ turn on warnings for suspicious modulus value
        .M   turn off warnings for suspicious modulus value
        n*   normal warning mode (cancels -gnatws/-gnatwe)
        .n   turn on info messages for atomic synchronization
        .N*  turn off info messages for atomic synchronization
        o*   turn on warnings for address clause overlay
        O    turn off warnings for address clause overlay
        .o   turn on warnings for out parameters assigned but not read
        .O*  turn off warnings for out parameters assigned but not read
        p+   turn on warnings for ineffective pragma Inline in frontend
        P*   turn off warnings for ineffective pragma Inline in frontend
        .p+  turn on warnings for suspicious parameter order
        .P*  turn off warnings for suspicious parameter order
        q*+  turn on warnings for questionable missing parenthesis
        Q    turn off warnings for questionable missing parenthesis
        r+   turn on warnings for redundant construct
        R*   turn off warnings for redundant construct
        .r+  turn on warnings for object renaming function
        .R*  turn off warnings for object renaming function
        s    suppress all info/warnings
        .s   turn on warnings for overridden size clause
        .S*  turn off warnings for overridden size clause
        t    turn on warnings for tracking deleted code
        T*   turn off warnings for tracking deleted code
        .t*+ turn on warnings for suspicious contract
        .T   turn off warnings for suspicious contract
        u+   turn on warnings for unused entity
        U*   turn off warnings for unused entity
        .u   turn on warnings for unordered enumeration
        .U*  turn off warnings for unordered enumeration
        v*+  turn on warnings for unassigned variable
        V    turn off warnings for unassigned variable
        .v*+ turn on info messages for reverse bit order
        .V   turn off info messages for reverse bit order
        w*+  turn on warnings for wrong low bound assumption
        W    turn off warnings for wrong low bound assumption
        .w   turn on warnings on pragma Warnings Off
        .W*  turn off warnings on pragma Warnings Off
        x*+  turn on warnings for export/import
        X    turn off warnings for export/import
        .x+  turn on warnings for non-local exception
        .X*  turn off warnings for non-local exception
        y*+  turn on warnings for Ada compatibility issues
        Y    turn off warnings for Ada compatibility issues
        .y   turn on info messages for why pkg body needed
        .Y*  turn off info messages for why pkg body needed
        z*+  turn on warnings for suspicious unchecked conversion
        Z    turn off warnings for suspicious unchecked conversion
        .z*+ turn on warnings for record size not a multiple of alignment
        .Z   turn off warnings for record size not a multiple of alignment
  -gnatW?   Wide character encoding method (?=h/u/s/e/8/b)
  -gnatx    Suppress output of cross-reference information
  -gnatX    Language extensions permitted
  -gnaty    Enable default style checks (same as -gnaty3abcefhiklmnprst)
  -gnatyxx  Enable selected style checks xx = list of parameters:
        1-9  check indentation
        a    check attribute casing
        A    check array attribute indexes
        b    check no blanks at end of lines
        B    check no use of AND/OR for boolean expressions
        c    check comment format (two spaces)
        C    check comment format (one space)
        d    check no DOS line terminators
        e    check end/exit labels present
        f    check no form feeds/vertical tabs in source
        g    check standard GNAT style rules, same as ydISux
        h    check no horizontal tabs in source
        i    check if-then layout
        I    check mode in
        k    check casing rules for keywords
        l    check reference manual layout
        Lnn  check max nest level < nn
        m    check line length <= 79 characters
        Mnn  check line length <= nn characters
        n    check casing of package Standard identifiers
        N    turn off all checks
        o    check subprogram bodies in alphabetical order
        O    check overriding indicators
        p    check pragma casing
        r    check casing for identifier references
        s    check separate subprogram specs present
        S    check separate lines after THEN or ELSE
        t    check token separation rules
        u    check no unnecessary blank lines
        x    check extra parentheses around conditionals
        y    turn on default style checks
        -    subtract (turn off) subsequent checks
        +    add (turn on) subsequent checks
  -gnatyN   Cancel all previously set style checks
  -gnatzc   Distribution stub generation for caller stubs
  -gnatzr   Distribution stub generation for receiver stubs
  -gnat83   Ada 83 mode
  -gnat95   Ada 95 mode
  -gnat2005 Ada 2005 mode
  -gnat2012 Ada 2012 mode (default)
  -gnat-p   Cancel effect of previous -gnatp switch
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ ./rec)[K_area

To compute the area of a rectangle,
enter its width: 3
enter its height: 6

The rectangle's area is  1.80000E+01

The rectangle's area is 18.000000000000000

]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ 12.3
12.3: command not found
]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ 12.3./rec_area

To compute the area of a rectangle,
enter its width: 12.3
enter its height: 45.6

The rectangle's area is  5.60880E+02

The rectangle's area is 560.880004882812500

]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ ./rec_area

To compute the area of a rectangle,
enter its width: 9.9
enter its height: 9.99

The rectangle's area is  9.89010E+01

The rectangle's area is 98.900993347167969

]0;sp46@gold12: ~/214/projects/01[01;32msp46@gold12[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-06 17:03:58-0500
