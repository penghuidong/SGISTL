��    �      L  �   |
      �  9  �  ]   3     �  #  �  �   �  �  Z  �  �  �  �    �"  1  �#  1  '  e  9+  A  �.  l  �1     N4     _4     h4     n4     �4     �4  $   �4     �4     �4     
5  "   '5     J5     X5     p5     �5     �5     �5  k  �5  4  *8  �   _9  J  9:  �  �<  �   ?     �?     �?  �   �?     @     �@     �@  	   �@  �   �@    dA  �   yD  �   =E  7  F  �  HG  �   �H  �   �I  �   }J  �   �J  �  �K  �   rP  �  Q  &   �R     �R  &   �R  <   S  0   >S      oS  )   �S  �   �S  '   cT     �T     �T  g   �T     U  %   =U     cU  +   �U  K   �U  =   �U  *   9V  )   dV      �V  "   �V  !   �V  $   �V  (   W     BW     bW     vW  $   �W  *   �W  	   �W  	   �W  	   �W  	   �W  	   X  	   X     X     X  
   0X  
   ;X  
   FX  
   QX  
   \X  
   gX     rX     �X     �X  "   �X     �X  5   �X  %   -Y     SY     aY     qY     �Y  8   �Y     �Y     �Y     �Y     Z     Z      Z  D   8Z     }Z     �Z     �Z     �Z     �Z     [  #   [     8[     T[     r[     �[     �[     �[     �[  $   �[  ,   \     /\  	   ?\  -   I\  ,   w\     �\  
   �\     �\  :   �\     �\     ]  >   ]  @   X]     �]     �]     �]     �]  	   �]     �]     ^     ^     .^     4^     N^  &   g^  �   �^  5   _  P   I_  Q   �_     �_  2  �_  :  +a  q   fd     �d  K  �d  �   6f  �  �f  E  �m  q  �o  3  `w  h  �x  E  �{  �  C�  w  �  u  b�     ؉  	   �     ��     ��     �     /�  /   N�  !   ~�     ��     ��  &   ӊ     ��     �     �     =�     U�     m�  �  ~�  X  5�  �   ��  �  ��  �  �  �   Е     ��     ��  �   ��     p�     v�     ��     ��  �   ��  d  ��  �   ��  �   �  f  ѝ  �  8�    $�  �   9�  �   �  �   ��  �  P�  �   )�  �  �  *   ��  	   ߫  (   �  ?   �  4   R�  #   ��  3   ��  �   ߬  *   ��     ɭ     ޭ  p   ��     g�  -   ��  #   ��  /   ٮ  N   	�  G   X�  0   ��  2   ѯ  $   �  #   )�  (   M�  &   v�  .   ��  "   ̰     �     �  )   �  6   F�     }�     ��     ��     ��     ��     ��     ��     ��     ��     Ʊ     ϱ     ر     �     �     �  %   �     7�  -   U�     ��  =   ��  (   ޲     �     �     6�     R�  H   m�     ��      Գ     ��     �     �  #   �  V   =�  !   ��     ��     Դ  "   �     
�     !�  %   5�     [�     y�     ��     ��     ǵ     �     �  (   �  0   9�     j�     z�  *   ��  /   ��     ޶  	   �     �  =   ��     :�     L�  [   X�  P   ��     �     �     -�     A�     _�     n�  	   ��     ��  
   ��     ��  '   Ը  -   ��  �   *�  B   ��  K   ��  K   F�     ��             G   @   �   |       �   ;      
   m           f   �         �       �   �   Q   r   �   v      )   g   =   �           o       P   .   '   j   Y       p   �       �       &       4   0   >   ]   �                 i   �   #   1   E   x   �   "   �   T   �      L   ~      �   :   +   �                 [   �   �   �          B   \             N      %              �   w   _                         �   e         �       ?               ^      -   y   `       K       7       5           S       (   �   C   s   �       W              H   <   D       *   �   A       I   8   q   9      J   F       6   U       !   �   �   {   �          l   u   a   	      �       c              �               �   n   d   M   b   $   X   V          �   k   �   �   �   /   O   3   }       2   ,   Z       �   z      t          �       �   R          h                
  ( EXPRESSION )               EXPRESSION is true
  ! EXPRESSION                 EXPRESSION is false
  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true
  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true

  [-n] STRING          the length of STRING is nonzero
  -z STRING            the length of STRING is zero
  STRING1 = STRING2    the strings are equal
  STRING1 != STRING2   the strings are not equal

  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2
  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2
  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2
  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2
  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2
  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2
 
  --help      display this help and exit
  --version   output version information and exit

 
# users=%u
 
Beware that many operators need to be escaped or quoted for shells.
Comparisons are arithmetic if both ARGs are numbers, else lexicographical.
Pattern matches return the string matched between \( and \) or null; if
\( and \) are not used, they return the number of characters matched or 0.
 
Beware that parentheses need to be escaped (e.g., by backslashes) for shells.
INTEGER may also be -l STRING, which evaluates to the length of STRING.
 
Combination settings:
* [-]LCASE      same as [-]lcase
  cbreak        same as -icanon
  -cbreak       same as icanon
  cooked        same as brkint ignpar istrip icrnl ixon opost isig
                icanon, eof and eol characters to their default values
  -cooked       same as raw
  crt           same as echoe echoctl echoke
  dec           same as echoe echoctl echoke -ixany intr ^c erase 0177
                kill ^u
* [-]decctlq    same as [-]ixany
  ek            erase and kill characters to their default values
  evenp         same as parenb -parodd cs7
  -evenp        same as -parenb cs8
* [-]lcase      same as xcase iuclc olcuc
  litout        same as -parenb -istrip -opost cs8
  -litout       same as parenb istrip opost cs7
  nl            same as -icrnl -onlcr
  -nl           same as icrnl -inlcr -igncr onlcr -ocrnl -onlret
  oddp          same as parenb parodd cs7
  -oddp         same as -parenb cs8
  [-]parity     same as [-]evenp
  pass8         same as -parenb -istrip cs8
  -pass8        same as parenb istrip cs7
  raw           same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip
                -inlcr -igncr -icrnl  -ixon  -ixoff  -iuclc  -ixany
                -imaxbel -opost -isig -icanon -xcase min 1 time 0
  -raw          same as cooked
  sane          same as cread -ignbrk brkint -inlcr -igncr icrnl
                -ixoff -iuclc -ixany imaxbel opost -olcuc -ocrnl onlcr
                -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0 ff0
                isig icanon iexten echo echoe echok -echonl -noflsh
                -xcase -tostop -echoprt echoctl echoke, all special
                characters to their default values.
 
Control settings:
  [-]clocal     disable modem control signals
  [-]cread      allow input to be received
* [-]crtscts    enable RTS/CTS handshaking
  csN           set character size to N bits, N in [5..8]
  [-]cstopb     use two stop bits per character (one with `-')
  [-]hup        send a hangup signal when the last process closes the tty
  [-]hupcl      same as [-]hup
  [-]parenb     generate parity bit in output and expect parity bit in input
  [-]parodd     set odd parity (even with `-')
 
FORMAT controls the output.  The only valid option for the second form
specifies Coordinated Universal Time.  Interpreted sequences are:

  %%%%   a literal %%
  %%a   locale's abbreviated weekday name (Sun..Sat)
  %%A   locale's full weekday name, variable length (Sunday..Saturday)
  %%b   locale's abbreviated month name (Jan..Dec)
  %%B   locale's full month name, variable length (January..December)
  %%c   locale's date and time (Sat Nov 04 12:02:33 EST 1989)
  %%d   day of month (01..31)
  %%D   date (mm/dd/yy)
  %%e   day of month, blank padded ( 1..31)
  %%h   same as %%b
  %%H   hour (00..23)
  %%I   hour (01..12)
  %%j   day of year (001..366)
  %%k   hour ( 0..23)
  %%l   hour ( 1..12)
  %%m   month (01..12)
  %%M   minute (00..59)
  %%n   a newline
  %%p   locale's AM or PM
  %%r   time, 12-hour (hh:mm:ss [AP]M)
  %%s   seconds since 00:00:00, Jan 1, 1970 (a GNU extension)
  %%S   second (00..61)
  %%t   a horizontal tab
  %%T   time, 24-hour (hh:mm:ss)
  %%U   week number of year with Sunday as first day of week (00..53)
  %%V   week number of year with Monday as first day of week (01..52)
  %%w   day of week (0..6);  0 represents Sunday
  %%W   week number of year with Monday as first day of week (00..53)
  %%x   locale's date representation (mm/dd/yy)
  %%X   locale's time representation (%%H:%%M:%%S)
  %%y   last two digits of year (00..99)
  %%Y   year (1970...)
  %%z   RFC-822 style numeric timezone (-0500) (a nonstandard extension)
  %%Z   time zone (e.g., EDT), or nothing if no time zone is determinable

By default, date pads numeric fields with zeroes.  GNU date recognizes
the following modifiers between `%%' and a numeric directive.

  `-' (hyphen) do not pad the field
  `_' (underscore) pad the field with spaces
 
Handle the tty line connected to standard input.  Without arguments,
prints baud rate, line discipline, and deviations from stty sane.  In
settings, CHAR is taken literally, or coded as in ^c, 0x37, 0177 or
127; special values ^- or undef used to disable special characters.
 
Input settings:
  [-]brkint     breaks cause an interrupt signal
  [-]icrnl      translate carriage return to newline
  [-]ignbrk     ignore break characters
  [-]igncr      ignore carriage return
  [-]ignpar     ignore characters with parity errors
* [-]imaxbel    beep and do not flush a full input buffer on a character
  [-]inlcr      translate newline to carriage return
  [-]inpck      enable input parity checking
  [-]istrip     clear high (8th) bit of input characters
* [-]iuclc      translate uppercase characters to lowercase
* [-]ixany      let any character restart output, not only start character
  [-]ixoff      enable sending of start/stop characters
  [-]ixon       enable XON/XOFF flow control
  [-]parmrk     mark parity errors (with a 255-0-character sequence)
  [-]tandem     same as [-]ixoff
 
Local settings:
  [-]crterase   echo erase characters as backspace-space-backspace
* crtkill       kill all line by obeying the echoprt and echoe settings
* -crtkill      kill all line by obeying the echoctl and echok settings
* [-]ctlecho    echo control characters in hat notation (`^c')
  [-]echo       echo input characters
* [-]echoctl    same as [-]ctlecho
  [-]echoe      same as [-]crterase
  [-]echok      echo a newline after a kill character
* [-]echoke     same as [-]crtkill
  [-]echonl     echo newline even if not echoing other characters
* [-]echoprt    echo erased characters backward, between `\' and '/'
  [-]icanon     enable erase, kill, werase, and rprnt special characters
  [-]iexten     enable non-POSIX special characters
  [-]isig       enable interrupt, quit, and suspend special characters
  [-]noflsh     disable flushing after interrupt and quit special characters
* [-]prterase   same as [-]echoprt
* [-]tostop     stop background jobs that try to write to the terminal
* [-]xcase      with icanon, escape with `\' for uppercase characters
 
Output settings:
* bsN           backspace delay style, N in [0..1]
* crN           carriage return delay style, N in [0..3]
* ffN           form feed delay style, N in [0..1]
* nlN           newline delay style, N in [0..1]
* [-]ocrnl      translate carriage return to newline
* [-]ofdel      use delete characters for fill instead of null characters
* [-]ofill      use fill (padding) characters instead of timing for delays
* [-]olcuc      translate lowercase characters to uppercase
* [-]onlcr      translate newline to carriage return-newline
* [-]onlret     newline performs a carriage return
* [-]onocr      do not print carriage returns in the first column
  [-]opost      postprocess output
* tabN          horizontal tab delay style, N in [0..3]
* tabs          same as tab0
* -tabs         same as tab3
* vtN           vertical tab delay style, N in [0..1]
 
Special characters:
* dsusp CHAR    CHAR will send a terminal stop signal once input flushed
  eof CHAR      CHAR will send an end of file (terminate the input)
  eol CHAR      CHAR will end the line
* eol2 CHAR     alternate CHAR for ending the line
  erase CHAR    CHAR will erase the last character typed
  intr CHAR     CHAR will send an interrupt signal
  kill CHAR     CHAR will erase the current line
* lnext CHAR    CHAR will enter the next character quoted
  quit CHAR     CHAR will send a quit signal
* rprnt CHAR    CHAR will redraw the current line
  start CHAR    CHAR will restart the output after stopping it
  stop CHAR     CHAR will stop the output
  susp CHAR     CHAR will send a terminal stop signal
* swtch CHAR    CHAR will switch to a different shell layer
* werase CHAR   CHAR will erase the last word typed
 
Special settings:
  N             set the input and output speeds to N bauds
* cols N        tell the kernel that the terminal has N columns
* columns N     same as cols N
  ispeed N      set the input speed to N
* line N        use line discipline N
  min N         with -icanon, set N characters minimum for a completed read
  ospeed N      set the output speed to N
* rows N        tell the kernel that the terminal has N rows
* size          print the number of rows and columns according to the kernel
  speed         print the terminal speed
  time N        with -icanon, set read timeout of N tenths of a second
  %2d:%02d%s  up   groups=  old  %%%c: invalid directive %s: No such user %s: binary operator expected
 %s: cannot find username for UID %u
 %s: expected a numeric value %s: no login name
 %s: unary operator expected
 %s: value not completely converted ')' expected
 ')' expected, found %s
 ,  load average: %.2f -ef does not accept -l
 -nt does not accept -l
 <undef> Change the effective user id and group id to that of USER.

  -, -l, --login               make the shell a login shell
  -c, --commmand=COMMAND       pass a single COMMAND to the shell with -c
  -f, --fast                   pass -f to the shell (for csh or tcsh)
  -m, --preserve-environment   do not reset environment variables
  -p                           same as -m
  -s, --shell=SHELL            run SHELL if /etc/shells allows it
      --help                   display this help and exit
      --version                output version information and exit

A mere - implies -l.   If USER not given, assume root.
 Copy standard input to each FILE, and also to standard output.

  -a, --append              append to the given FILEs, do not overwrite
  -i, --ignore-interrupts   ignore interrupt signals
      --help                display this help and exit
      --version             output version information and exit
 Diagnose unportable constructs in NAME.

  -p, --portability   check for all POSIX systems, not only this one
      --help          display this help and exit
      --version       output version information and exit
 Display the current time in the given FORMAT, or set the system date.

  -d, --date=STRING        display time described by STRING, not `now'
  -f, --file=DATEFILE      like --date once for each line of DATEFILE
  -r, --reference=FILE     display the last modification time of FILE
  -R, --rfc-822            output RFC-822 compliant date string
  -s, --set=STRING         set time described by STRING
  -u, --utc, --universal   print or set Coordinated Universal Time
      --help               display this help and exit
      --version            output version information and exit
 Echo the STRING(s) to standard output.

  -n              do not output the trailing newline
  -e              (unused)
  -E              disable interpolation of some sequences in STRINGs
      --help      display this help and exit (should be alone)
      --version   output version information and exit (should be alone)

Without -E, the following sequences are recognized and interpolated:

  \NNN   the character whose ASCII code is NNN (octal)
  \\     backslash
  \a     alert (BEL)
  \b     backspace
  \c     suppress trailing newline
  \f     form feed
  \n     new line
  \r     carriage return
  \t     horizontal tab
  \v     vertical tab
 Exit with the status determined by EXPRESSION.

  --help      display this help and exit
  --version   output version information and exit

EXPRESSION is true or false and sets exit status.  It is one of:
 FROM
 IDLE   If no environment VARIABLE specified, print them all.

  --help      display this help and exit
  --version   output version information and exit
 LINE LOGIN-TIME    MESG  Password: Pause for NUMBER seconds.
SUFFIX may be s to keep seconds, m for minutes, h for hours or d for days.

  --help      display this help and exit
  --version   output version information and exit
 Print ARGUMENT(s) according to FORMAT.

  --help      display this help and exit
  --version   output version information and exit

FORMAT controls the output as in C printf.  Interpreted sequences are:

  \"      double quote
  \0NNN   character with octal value NNN (0 to 3 digits)
  \\      backslash
  \a      alert (BEL)
  \b      backspace
  \c      produce no further output
  \f      form feed
  \n      new line
  \r      carriage return
  \t      horizontal tab
  \v      vertical tab
  \xNNN   character with hexadecimal value NNN (1 to 3 digits)

  %%%%      a single %%
  %%b      ARGUMENT as a string with `\' escapes interpreted

and all C format specifications ending with one of diouxXfeEgGcs, with
ARGUMENTs converted to proper type first.  Variable widths are handled.
 Print NAME with any leading directory components removed.
If specified, also remove a trailing SUFFIX.

  --help      display this help and exit
  --version   output version information and exit
 Print NAME with its trailing /component removed; if NAME contains no /'s,
output `.' (meaning the current directory).

  --help      display this help and exit
  --version   output version information and exit
 Print factors of each NUMBER; read standard input with no arguments.

  --help      display this help and exit
  --version   output version information and exit

  Print the prime factors of all specified integer NUMBERs.  If no arguments
  are specified on the command line, they are read from standard input.
 Print or change terminal characteristics.

  -a, --all       print all current settings in human-readable form
  -g, --save      print all current settings in a stty-readable form
      --help      display this help and exit
      --version   output version information and exit

Optional - before SETTING indicates negation.  An * marks non-POSIX
settings.  The underlying system defines which settings are available.
 Print the file name of the terminal connected to standard input.

  -s, --silent, --quiet   print nothing, only return an exit status
      --help              display this help and exit
      --version           output version information and exit
 Print the full filename of the current working directory.

  --help      display this help and exit
  --version   output version information and exit
 Print the name of the current user.

  --help      display this help and exit
  --version   output version information and exit
 Print the user name associated with the current effective user id.
Same as id -un.

  --help      display this help and exit
  --version   output version information and exit
 Print the value of EXPRESSION to standard output.  A blank line below
separates increasing precedence groups.  EXPRESSION may be:

  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2

  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0

  ARG1 < ARG2       ARG1 is less than ARG2
  ARG1 <= ARG2      ARG1 is less than or equal to ARG2
  ARG1 = ARG2       ARG1 is equal to ARG2
  ARG1 != ARG2      ARG1 is unequal to ARG2
  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2
  ARG1 > ARG2       ARG1 is greater than ARG2

  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2
  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2

  ARG1 * ARG2       arithmetic product of ARG1 and ARG2
  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2
  ARG1 %% ARG2       arithmetic remainder of ARG1 divided by ARG2

  STRING : REGEXP   anchored pattern match of REGEXP in STRING

  match STRING REGEXP        same as STRING : REGEXP
  substr STRING POS LENGTH   substring of STRING, POS counted from 1
  index STRING CHARS         index in STRING where any CHARS is found, or 0
  length STRING              length of STRING

  ( EXPRESSION )             value of EXPRESSION
 Repeatedly output a line with all specified STRING(s), or `y'.

  --help      display this help and exit
  --version   output version information and exit
 Run COMMAND with an adjusted scheduling priority.
With no COMMAND, print the current scheduling priority.  ADJUST is 10
by default.  Range goes from -20 (highest priority) to 19 (lowest).

  -ADJUST                   increment priority by ADJUST first
  -n, --adjustment=ADJUST   same as -ADJUST
      --help                display this help and exit
      --version             output version information and exit
 Try `%s --help' for more information.
 USER Usage: %s EXPRESSION
  or:  %s OPTION
 Usage: %s EXPRESSION
  or:  [ EXPRESSION ]
  or:  %s OPTION
 Usage: %s FORMAT [ARGUMENT]...
  or:  %s OPTION
 Usage: %s NAME
  or:  %s OPTION
 Usage: %s NAME [SUFFIX]
  or:  %s OPTION
 Usage: %s [NAME]
  or:  %s OPTION
Print the hostname of the current system.

  --help      display this help and exit
  --version   output version information and exit
 Usage: %s [NUMBER]...
  or:  %s OPTION
 Usage: %s [OPTION]
 Usage: %s [OPTION]...
 Usage: %s [OPTION]... LAST
  or:  %s [OPTION]... FIRST LAST
  or:  %s [OPTION]... FIRST INCREMENT LAST
 Usage: %s [OPTION]... NAME...
 Usage: %s [OPTION]... NUMBER[SUFFIX]
 Usage: %s [OPTION]... [ FILE ]
 Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]
 Usage: %s [OPTION]... [+FORMAT]
  or:  %s [OPTION] [MMDDhhmm[[CC]YY][.ss]]
 Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]
 Usage: %s [OPTION]... [-] [USER [ARG]...]
 Usage: %s [OPTION]... [COMMAND [ARG]...]
 Usage: %s [OPTION]... [FILE]...
 Usage: %s [OPTION]... [STRING]...
 Usage: %s [OPTION]... [USERNAME]
 Usage: %s [OPTION]... [VARIABLE]...
 Usage: %s [SETTING]...
  or:  %s OPTION
 Usage: %s format [argument...]
 \%c: invalid escape `%s' is not a directory `%s' is not a valid positive integer a command must be given with an adjustment after -eq after -ge after -gt after -le after -lt after -ne am argument expected
 before -eq before -ge before -gt before -le before -lt before -ne cannot determine hostname cannot get current directory cannot get priority cannot get supplemental group list cannot get system name cannot print only names or real IDs in default format cannot print only user and only group cannot run %s cannot set date cannot set group id cannot set groups cannot set hostname; this system lacks the functionality cannot set priority cannot set user id couldn't get boot time day days directory `%s' is not searchable format string may not be specified when printing equal width strings getpass: cannot open /dev/tty ignoring non-option arguments incorrect password integer expression expected %s
 invalid argument `%s' invalid date `%s' invalid floating point argument: %s invalid format string: `%s' invalid integer argument `%s' invalid option `%s' invalid priority `%s' invalid time interval `%s' missing `]'
 missing argument to `%s' missing hexadecimal number in escape name `%s' has length %d; exceeds limit of %d new_mode: mode
 not a tty path `%s' contains nonportable character `%c' path `%s' has length %d; exceeds limit of %d pm read error standard input standard input: unable to perform all requested operations standard output syntax error the options to print and set the time may not be used together the options to specify dates for printing are mutually exclusive too few arguments too many arguments too many arguments
 too many non-option arguments undefined unknown binary operator user user %s does not exist users using restricted shell %s virtual memory exhausted warning: cannot change directory to %s warning: unportable BRE: `%s': using `^' as the first character
of the basic regular expression is not portable; it is being ignored when specifying an output style, modes may not be set when the starting value is larger than the limit,
the increment must be negative when the starting value is smaller than the limit,
the increment must be positive write error Project-Id-Version: sh-utils 1.12m
POT-Creation-Date: 1997-01-25 22:52-0600
PO-Revision-Date: 1996-10-07 10:13 MET DST
Last-Translator: Erick Branderhorst <branderh@debian.org>
Language-Team: Dutch <nl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8-bit
 
  ( EXPRESSIE )               EXPRESSIE is waar
  ! EXPRESSIE                 EXPRESSIE is onwaar
  EXPRESSIE1 -a EXPRESSIE2    zowel EXPRESSIE1 als EXPRESSIE2 zijn waar
  EXPRESSIE1 -o EXPRESSIE2    of EXPRESSIE1 of EXPRESSIE2 is waar

  [-n] STRING          de lengte van STRING is niet nul
  -z STRING            de lengte van STRING is nul
  STRING1 = STRING2    de strings zijn gelijk
  STRING1 != STRING2   de strings zijn niet gelijk

  INTEGER1 -eq INTEGER2   INTEGER1 is gelijk aan INTEGER2
  INTEGER1 -ge INTEGER2   INTEGER1 is groter dan of gelijk aan INTEGER2
  INTEGER1 -gt INTEGER2   INTEGER1 is groter dan INTEGER2
  INTEGER1 -le INTEGER2   INTEGER1 is kleiner dan of gelijk aan INTEGER2
  INTEGER1 -lt INTEGER2   INTEGER1 is kleiner dan INTEGER2
  INTEGER1 -ne INTEGER2   INTEGER1 is niet gelijk aan INTEGER2
 
  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma

 
# gebruikers=%u
 
Let er op dat veel operatoren geescaped of gekwoot gebruikt moeten
worden bij shells.  Vergelijking zijn arithmetisch als beide ARGs
nummers zijn, anders lexicographisch.  Patroon overeenkomsten geven de
gevonden string tussen \( en \) of null; als \( en \) niet zijn
gebruikt, geven ze het aantal overeenkomstige karkaters of 0.
 
Let op dat parentheses moet worden geescaped (b.v., door backslashes)
bij shells.  INTEGER mag ook -l STRING zijn, wat resulteert in de
lengte van STRING.
 
Gecombineerde instellingen:
* [-]LCASE      zelfde als [-]lcase
  cbreak        zelfde als -icanon
  -cbreak       zelfde als icanon
  cooked        zelfde als brkint ignpar istrip icrnl ixon opost isig
                icanon, eof en eol karakters en hun standaard waarden
  -cooked       zelfde als raw
  crt           zelfde als echoe echoctl echoke
  dec           zelfde als echoe echoctl echoke -ixany intr ^c erase 0177
                kill ^u
* [-]decctlq    zelfde als [-]ixany
  ek            erase and kill karakters en hun standaard waarden
  evenp         zelfde als parenb -parodd cs7
  -evenp        zelfde als -parenb cs8
* [-]lcase      zelfde als xcase iuclc olcuc
  litout        zelfde als -parenb -istrip -opost cs8
  -litout       zelfde als parenb istrip opost cs7
  nl            zelfde als -icrnl -onlcr
  -nl           zelfde als icrnl -inlcr -igncr onlcr -ocrnl -onlret
  oddp          zelfde als parenb parodd cs7
  -oddp         zelfde als -parenb cs8
  [-]parity     zelfde als [-]evenp
  pass8         zelfde als -parenb -istrip cs8
  -pass8        zelfde als parenb istrip cs7
  raw           zelfde als -ignbrk -brkint -ignpar -parmrk -inpck -istrip
                -inlcr -igncr -icrnl  -ixon  -ixoff  -iuclc  -ixany
                -imaxbel -opost -isig -icanon -xcase min 1 time 0
  -raw          zelfde als cooked
  sane          zelfde als cread -ignbrk brkint -inlcr -igncr icrnl
                -ixoff -iucl -ixany imaxbel opost -olcuc -ocrnl onlcr
                -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0 ff0
                isig icanon iexten echo echoe echok -echonl -noflsh
                -xcase -tostop -echoprt echoctl echoke, alle speciale
                karakters en hun standaard waarden
 
Controle instellingen:
  [-]clocal     geen modem controle signalen
  [-]cread      invoer mag ontvangen worden
* [-]crtscts    zet RTS/CTS handjeschudden aan
  csN           zet karaktergrootte op N bits, N ligt in [5..8]
  [-]cstopb     gebruik twee stop bits per karakter (een met `-')
  [-]hup        stuur een `hang op' signaal wanneer het laatste proces 
                de tty sluit
  [-]hupcl      zelfde als [-]hup
  [-]parenb     genereer pariteitsbit in uitvoer en 
                verwacht pariteitsbit in invoer
  [-]parodd     zet oneven pariteit aan (even met `-')
 
FORMAAT bepaalt de uitvoer.  De enige juiste voor de tweede vorm
specificeert Coordinated Universal Time.  Mogelijke reeksen zijn:

  %%%%   een letterlijk %%
  %%a   locale's afgekorte weekdagnaam (zon..zat)
  %%A   locale's volledige weekdagnaam, variabele lengte (zondag..zaterdag)
  %%b   locale's afgekorte maandnaam (jan..dec)
  %%B   locale's volledige maandnaam, variabele lengte (januari..december)
  %%c   locale's datum en tijd (zat nov 04 12:02:33 EST 1989)
  %%d   dag van de maand (01..31)
  %%D   datum (mm/dd/yy)
  %%e   dag van de maand, met voorvoegspatie ( 1..31)
  %%h   zelfde als %%b
  %%H   uur (00..23)
  %%I   uur (01..12)
  %%j   dag van het jaar (001..366)
  %%k   uur ( 0..23)
  %%l   uur ( 1..12)
  %%m   maand (01..12)
  %%M   minuut (00..59)
  %%n   een nieuwe regel
  %%p   locale's AM of PM
  %%r   tijd, 12-uurs (hh:mm:ss [AP]M)
  %%s   seconden sedert 00:00:00, Jan 1, 1970 (een GNU extra'tje)
  %%S   seconden (00..61)
  %%t   een horizontale tab
  %%T   tijd, 24-uurs (hh:mm:ss)
  %%U   weeknummer van het jaar met zondag als eerste dag van de week (00..53)
  %%V   weeknummer van het jaar met maandag als eerste dag van de week (01..52)
  %%w   dag van de week (0..6);  0 representeert zondag
  %%W   weeknummer van het jaar met maandag als eerste dag van de week (00..53)
  %%x   locale's datum representatie (mm/dd/yy) (FIXME)
  %%X   locale's tijd representatie (%%H:%%M:%%S) (FIXME)
  %%y   laatste twee cijfers van jaartal (00..99)
  %%Y   jaartal (1970...)
  %%z   RFC-822 stijl numerieke tijdzone (-0500) (een niet standaard extra)
  %%Z   tijdzone (b.v., EDT), of niets als tijdzone niet te achterhalen is

Standaard, worden numerieke velden voorafgegaan door nullen.  GNU date
herkent de volgende wijzigers tussen `%%' en een numeriek directief.

  `-' (afbreekstreepje) geen voorafgaande nullen of spaties
  `_' (underscore) vooraf laten gaan door spaties
 
Gebruik de tty lijn verbonden met standaardinvoer.  Zonder argumenten,
toon baud rate, regel discipline en afleidingen van stty sane.  Bij
instellingen, CHAR wordt letterlijk gebruikt, of gecodeerd als in ^c,
0x37, 0177 of 127; speciale waarden ^- of undef gebruik om speciale
karakters inactief te maken.
 
Invoer instellingen:
  [-]brkint     breaks veroorzaken een interrupt signaal
  [-]icrnl      zet carriage return om in newline
  [-]ignbrk     negeer break karakters
  [-]igncr      negeer carriage return
  [-]ignpar     negeer karakters met pariteitsfouten
* [-]imaxbel    bel en flush een volle invoerbuffer niet op een karakter??
  [-]inlcr      zet newline om in carriage return
  [-]inpck      zet invoer pariteits kontrolle aan
  [-]istrip     maak hoge (8e) bit schoon van de invoer karakters
* [-]iuclc      zet hoofdletters om in kleine letters
* [-]ixany      laat elk karakter de uitvoer herstarten, niet alleen het 
                start karakter
  [-]ixoff      zet zenden van start/stop karakters aan
  [-]ixon       zet XON/XOFF flow kontrolle aan
  [-]parmrk     markeer pariteitsfouten (met een 255-0-karakter reeks)
  [-]tandem     zelfde als [-]ixoff
 
Lokale instellingen:
  [-]crterase   toon wis karakters als backspace-space-backspace
* crtkill       dood alle regels door obeying the echoprt and echoe settings
* -crtkill      kill all line by obeying the echoctl and echok settings
* [-]ctlecho    toon kontolle karakters in dakje notatie (`^c')
  [-]echo       toon invoer karakters
* [-]echoctl    zelfde als [-]ctlecho
  [-]echoe      zelfde als [-]crterase
  [-]echok      toon een newline na een kill karakter
* [-]echoke     zelfde als [-]crtkill
  [-]echonl     toon newline zelfs als andere karakters niet getoond worden
* [-]echoprt    toon gewiste karakers achterwaards, tussen `\' en '/'
  [-]icanon     zet wissen aan, kill, werase, en rprnt speciale karakters
  [-]iexten     zet niet-POSIX speciale karakters aan
  [-]isig       zet interrupt aan, stop, en suspend speciale karakters
  [-]noflsh     zet flushing uit na interrupt en quit speciale karakters
* [-]prterase   zelfde als [-]echoprt
* [-]tostop     stop achtergrond jobs die naar de terminal schrijven
* [-]xcase      met icanon, escape met `\' voor hoofdletters
 
Uitvoer instellingen:
* bsN           backspace vertragingsstijl, N in [0..1]
* crN           carriage return vertragingsstijl, N in [0..3]
* ffN           form feed vertragingsstijl, N in [0..1]
* nlN           newline vertragingsstijl, N in [0..1]
* [-]ocrnl      zet carriage return om in newline
* [-]ofdel      gebruik delete karakters voor fill in plaats van null karakters
* [-]ofill      gebruik fill (padding) karakters in plaats van timing voor 
                vertragingen
* [-]olcuc      zet kleine letters om in hoofdletters
* [-]onlcr      zet newline om in carriage return-newline
* [-]onlret     newline voert een carriage return uit
* [-]onocr      toon geen carriage returns in de eerste kolom
  [-]opost      na proces uitvoer
* tabN          horizontale tab vertragingsstijl, N in [0..3]
* tabs          zelfde als tab0
* -tabs         zelfde als tab3
* vtN           verticale tab vertragingsstijl, N in [0..1]
 
Speciale karakters:
* dsusp CHAR    CHAR zal een terminal stop signaal zenden na flushen invoer
  eof CHAR      CHAR zal een einde bestand teken zenden (afsluiten invoer)
  eol CHAR      CHAR zal een einde regel teken zenden
* eol2 CHAR     alternate CHAR for ending the line
  erase CHAR    CHAR zal het laatst getypte karakter wissen
  intr CHAR     CHAR zal een interrupt signaal zenden
  kill CHAR     CHAR zal de huidige regel wissen
* lnext CHAR    CHAR zal het volgende karakter kwoteren
  quit CHAR     CHAR zal een stop signaal zenden
* rprnt CHAR    CHAR zal de huidige regel open laten zien
  start CHAR    CHAR zal de uitvoeren herstarten na stoppen
  stop CHAR     CHAR zal de uitvoer stoppen
  susp CHAR     CHAR zal een terminal stop signaal zenden
* swtch CHAR    CHAR zal veranderen naar een andere shell layer
* werase CHAR   CHAR zal het laatst getypte woorde wissen
 
Special instellingen:
  N             zet de invoer- en uitvoersnelheid op N bauds
* cols N        vertel de kernel dat de terminal N kolomen heeft
* columns N     zelfde als cols N
  ispeed N      zet de invoersnelheid op N
* line N        gebruik regel discipline N
  min N         met -icanon, zet N karakterminimum voor complete read
  ospeed N      zet de uitvoersnelheid op N
* rows N        vertel de kernel dat de terminal N rijen heeft
* size          toon het aantal rijen en kolomen volgens de kernel
  speed         toon de terminalsnelheid
  time N        met -icanon, zet lees timeout op N tienden van een seconde
  %2d:%02d%s  levend   groepen=  oud  %%%c: ongeldige directief %s: Onbekende gebruiker %s: verwacht binaire operator
 %s: kan geen gebruikersnaam vinden voor UID %u
 %s: verwacht een numerieke waarde %s: geen login naam
 %s: verwacht unaire operator
 %s: waarde niet helemaal geconverteerd verwacht ')'
 verwacht ')', vond %s
 ,  belastingsgemiddelde: %.2f -ef accepteert geen -l
 -nt accepteert geen -l
 <ongedefinieerd> Verander de effectieve gebruikers id en groep id in die van GEBRUIKER.

  -, -l, --login               maak van de shell een login shell
  -c, --commmand=COMMANDO      stuur een enkel COMMANDO naar de shell met -c
  -f, --fast                   stuur -f naar de shell (voor csh of tcsh)
  -m, --preserve-environment   reset de omgevingsvariabelen niet
  -p                           zelfde als -m
  -s, --shell=SHELL            voer SHELL uit als /etc/shells dit toestaat
      --help                   toon hulptekst en be�indig programma
      --version                toon versie-informatie en be�indig programma

Een simple - betekent -l.  Als GEBRUIKER niet gegeven is, veronderstel root.
 Kopieer standaardinvoer naar elk BESTAND, en ook naar standaarduitvoer.

  -a, --append              toevoegen aan opgegeven BESTAND, overschrijf niets
  -i, --ignore-interrupts   negeer interrupt signalen
      --help                toon hulptekst en be�indig programma
      --version             toon versie-informatie en be�indig programma
 Diagnostiseer niet portabel constructies in NAAM.

  -p, --portability   kontroleer voor alle POSIX systemen, niet alleen deze
      --help          toon hulp-tekst en be�indig programma
      --version       toon versie-informatie en be�indig programma
 Toon de huidige tijd in het gegeven FORMAAT, of stel de systeemdatum in.

  -d, --date=STRING        toon tijd zoals beschreven door STRING, niet `now'
  -f, --file=DATUMBESTAND  zoals --date voor iedere regel van DATUMBESTAND
  -r, --reference=BESTAND  toon de laastste wijzinging tijd van BESTAND
  -R, --rfc-822            toon RFC-822 compliant datum string
  -s, --set=STRING         stel tijd in zoals beschreven door STRING
  -u, --utc, --universal   toon of stel in volgens Coordinated Universal Time
      --help               toon hulp-tekst en be�indig programma
      --version            toon versie-informatie en be�indig programma
 Toon de STRING(s) via standaard uitvoer.

  -n              laat de be�indigende nieuwe regel achterwege
  -e              (niet gebruikt)
  -E              disable interpolation of some sequences in STRINGs
      --help      toon hulp-tekst en be�indig programma (enige optie)
      --version   toon versie-informatie en be�indig programma (enige optie)

Zonder -E, worden de volgende reeksen herkent en ge�nterpoleerd:

  \NNN   het karakter waarvan de ASCII code NNN (octal) is
  \\     backslash
  \a     alarm (BEL)
  \b     backspace
  \c     onderdruk be�indigende nieuwe regel
  \f     form feed
  \n     nieuwe regel
  \r     carriage return
  \t     horizontale tab
  \v     verticale tab
 Stop met de status bepaalt door EXPRESSIE.

  --help      toon hulptekst en be�indig programma
  --version   toon versie-informatie en be�indig programma

EXPRESSIE is waar of onwaar en zet exit status.  Het is een van:
 UIT
 IDLE   Als geen omgevings VARIABELE is gespecificeerd, toon ze dan allemaal.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 REGEL LOGIN-TIJD   MELDING  Wachtwoord: Pauseer voor NUMMER seconden.  ACHTERVOEGSEL mag respectievelijk s (voor 
seconden), m (voor minuten), h (voor uren) en d (voor dagen) zijn.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Toon ARGUMENT(en) volgens het FORMAAT.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma

FORMAAT bepaalt de uitvoer als in C printf.  Ge�nterpreteerde reeksen zijn:

  \"      dubbele kwoot
  \0NNN   karakter met octale waarde NNN (0 tot 3 cijfers)
  \\      backslash
  \a      alarm (BEL)
  \b      backspace
  \c      produce no further output
  \f      form feed
  \n      nieuwe regel
  \r      carriage return
  \t      horizontale tab
  \v      verticale tab
  \xNNN   character net hexadecimale waarde NNN (1 tot 3 cijfers)

  %%%%      een enkel %%
  %%b      ARGUMENT als een string met ge�nterpreteerde `\' escapes

en alle C formaat specificaties eindigend met een van `diouxXfeEgGcs',
met ARGUMENT(en) converterend naar `proper type first'.  Er wordt
rekening gehouden met variabele breedte.
 Toon NAAM zonder de voorafgaande directory componenten.  Indien
gespecificeerd, verwijder het achtervoegsel ACHTERVOEGSEL.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Toon NAAM zonder de trailing /component removed; als NAAM geen /'s
bevat toon dan `.' (bedoelende de huidige directory).

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Toon factor van elk NUMMER; lees standaard invoer indien geen argumenten.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma

Toon de priem factoren van alle gespecificeerde integer NUMMERs.  Als
geen argumenten gespecificeerd zijn op de commando-regel, worden ze
gelezen vanuit standaard invoer.
 Toon of verander terminal karakteristieken.

  -a, --all       toon alle huidige instellingen in voor een mens leesbare vorm
  -g, --save      toon alle huidige instellingen in voor een stty leesbare vorm
      --help      toon hulp-tekst en be�indig programma
      --version   toon versie-informatie en be�indig programma

Optioneel - voor INSTELLING indicatie `negation'.  Een * markeert
niet-POSIX instellingen.  Het onderliggende systeem definieert welke
instellingen beschikbaar zijn.
 Toon de bestandsnaam van de terminal verbonden met standaard invoer.

  -s, --silent, --quiet   toon niets, retourneer alleen de exit status
      --help              toon hulp-tekst en be�indig programma
      --version           toon versie-informatie en be�indig programma
 Toon de volledige bestandsnaam van de huidige werk directory.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Toon de naam van de huidige gebruiker.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Toon de gebruikersnaam ge�ssocieerd met de huidige effectieve gebruikers id.
Zelfde als id -un.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informate en be�indig programma
 Toon de waarde van EXPRESSIE via standaard uitvoer.  Een lege regel
scheidt de toenemende `precedence' groepen.  EXPRESSIE mag het zijn:

  ARG1 | ARG2       ARG1 als het nog null nog 0 is, anders ARG2

  ARG1 & ARG2       ARG1 als beide argument null of 0 zijn, anders 0

  ARG1 < ARG2       ARG1 is kleiner dan ARG2
  ARG1 <= ARG2      ARG1 is kleiner dan of gelijk aan ARG2
  ARG1 = ARG2       ARG1 is gelijk aan ARG2
  ARG1 != ARG2      ARG1 is ongelijk aan ARG2
  ARG1 >= ARG2      ARG1 is groter dan of gelijk aan ARG2
  ARG1 > ARG2       ARG1 is groter dan ARG2

  ARG1 + ARG2       arithmetische som van ARG1 en ARG2
  ARG1 - ARG2       arithmetisch verschil tussen ARG1 en ARG2

  ARG1 * ARG2       arithmetisch product van ARG1 en ARG2
  ARG1 / ARG2       arithmetisch quotient van ARG1 gedeeld door ARG2
  ARG1 %% ARG2       arithmetisch rest van ARG1 gedeeld door ARG2

  STRING : REGEXP   anchored pattern match of REGEXP in STRING

  match STRING REGEXP        same as STRING : REGEXP
  substr STRING POS LENGTH   substring of STRING, POS counted from 1
  index STRING CHARS         index in STRING where any CHARS is found, or 0
  length STRING              length of STRING

  ( EXPRESSION )             value of EXPRESSION
 Herhaaldelijk tonen van regel met alle gespecificeerde STRING(s), of `y'.

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Voer COMMANDO uit met een aangepaste `scheduling' prioriteit.  Bij geen 
COMMANDO, toon de huidge `scheduling' prioriteit.  WIJZIG is standaard 10. 
Domein gaat van -20 (hoogste prioriteit) tot 19 (laagste).

  -WIJZIG                   verhoog de prioriteit eerst met WIJZIG
  -n, --adjustment=WIJZIG   zelfde als -WIJZIG
      --help                toon hulp-tekst en be�indig programma
      --version             toon versie-informatie en be�indig programma

 Probeer `%s --help' voor meer informatie.
 GEBRUIKER Aanroep: %s EXPRESSIE
   of:   %s OPTIE
 Aanroep: %s EXPRESSIE
   of:   [ EXPRESSIE ]
   of:   %s OPTIE
 Aanroep: %s FORMAAT [ARGUMENT]...
   of:   %s OPTIE
 Aanroep: %s NAAM
   of:   %s OPTIE
 Aanroep: %s NAAM [ACHTERVOEGSEL]
   of:   %s OPTIE
 Aanroep: %s [NAAM]
   of:   %s OPTIE
Toon de hostnaam van het huidige systeem

  --help      toon hulp-tekst en be�indig programma
  --version   toon versie-informatie en be�indig programma
 Aanroep: %s [NUMMER]...
   of:   %s OPTIE
 Aanroep: %s [OPTIE]
 Aanroep: %s [OPTIE]...
 Aanroep: %s [OPTIE]... LAATSTE
   of:   %s [OPTIE]... EERSTE LAATSTE
   of:   %s [OPTIE]... EERSTE STAP LAATSTE
 Aanroep: %s [OPTIE]... NAAM...
 Aanroep: %s [OPTIE]... NUMMER[ACHTERVOEGSEL]
 Aanroep: %s [OPTIE]... [ BESTAND ]
 Aanroep: %s [OPTIE]... [ BESTAND | ARG1 ARG2 ]
 Aanroep: %s [OPTIE]... [+FORMAAT]
   of:   %s [OPTIE] [MMDDhhmm[[CC]YY][.ss]]
 Aanroep: %s [OPTIE]... [-] [NAAM=WAARDE]... [COMMANDO [ARGUMENTEN]...]
 Aanroep: %s [OPTIE]... [-] [GEBRUIkER [ARG]...]
 Aanroep: %s [OPTIE]... [COMMANDO [ARGUMENTEN]...]
 Aanroep: %s [OPTIE]... [BESTAND]...
 Aanroep: %s [OPTIE]... [STRING]...
 Aanroep: %s [OPTIE]... [GEBRUIKERSNAAM]
 Aanroep: %s [OPTIE]... [VARIABELE]...
 Aanroep: %s [INSTELLING]...
   of:   %s OPTIE
 Aanroep: %s formaat [argument...]
 \%c: ongeldige escape `%s' is geen directory `%s' is niet een juiste positieve integer er moet een commando gegeven worden met een aanpassing na -eq na -ge na -gt na -le na -lt na -ne am verwacht argument
 voor -eq voor -ge voor -gt voor -le voor -lt voor -ne kan hostname niet achterhalen kan huidige directory niet verkrijgen kan prioriteit niet instellen kan geen suplementaire groep lijst verkrijgen kan geen systeem naam vinden kan niet alleen namen of echte IDs in standaard formaat tonen kan niet alleen gebruiker en groep tonen kan %s niet uitvoeren kan datum niet instellen kan groep id niet instellen kan groepen niet instellen kan hostnaam niet instellen; dit systeem biedt deze functionaliteit niet kan prioriteit niet instellen kan gebruikers id niet instellen kan geen boot tijd vinden dag dagen directory `%s' is niet doorzoekbaar formaat string mag niet worden gespecificeerd bij tonen van string van
gelijke breedte getpass: kan /dev/tty niet openen negeren niet-optie argumenten onjuist wachtwoord verwacht een integer expressie %s
 ongeldig argument `%s' onjuiste datum `%s' ongeldig drijvende komma argument: %s ongeldig string formaat: `%s' ongeldig integer argument `%s' ongeldige optie `%s' ongeldige prioriteit `%s' ongeldig tijdsinterval `%s' ontbrekend `]'
 ontbrekend argument bij `%s' ontbrekend hexadecimaal nummer in escape naam `%s' is %d lang; overschrijdt limiet van %d new_mode: mode
 geen tty pad `%s' bevat niet portabel karakter `%c' pad `%s' is %d lang; overschrijdt limiet van %d pm lees fout standaard invoer standaard invoer: kan niet alle gevraagde operaties uitvoeren standaard uitvoer syntax fout de opties om te printen en de tijd in te stellen kunnen niet
tegelijkertijd gebruikt worden de opties om datums voor printen te specificeren zijn onderling excluderend (FM) te weinig argumenten te veel argumenten te veel argumenten
 te veel niet-optie argumenten ongedefinieerd onbekende binaire operator gebruiker gebruiker %s bestaat niet gebruikers gebruik restricted shell %s geen virtueel geheugen meer beschikbaar let op: kan niet naar directory %s veranderen let op: niet portable BRE: `%s': gebruik `^' als het eerrste karakter
van de basic reguliere expressie is niet portable; het wordt genegeerd bij specificeren van een uitvoer stijl, worden modi niet ingesteld als de begin waarde groter is dan de limiet, dan moet de stap negatief zijn als de begin waarde kleiner is dan de limiet dan moet de stap positief zijn schrijffout 