��    �      �  �   ,      �  �  �  �  �  �  �     �     �  /   �     �  "   �     "  '   <  #   d  )   �  "   �     �  8   �     "     @     `     s  "   �  )   �     �  2   �     $     3     R  )   b  =   �  ;   �  A    �  H  �  F!  :  1#     l&     s&  b  v&  �   �*  O  g+  �  �,  '  �/  �  �3  �  w7  &   B9  *   i9     �9  $   �9  &   �9  "   �9  +   !:  "   M:      p:  V   �:  '   �:  +   ;  .   <;  �   k;  �  V<    >  �  D  <   �E  :   F  8   @F  #   yF     �F  &   �F  !   �F     �F  	   G     G  @   %G  >   fG     �G  "   �G     �G     �G  :   �G     8H     =H     LH     RH  :   `H  ;   �H     �H     �H  )   I     2I  *   MI     xI  *   �I  -   �I  %   �I  %   J     :J      UJ     vJ  '   �J  %   �J  #   �J     K     K  #   )K  (   MK  %   vK     �K  &   �K  G   �K  ,   +L  1   XL  "   �L     �L  T   �L  N   M     jM  ;   yM     �M  -   �M  &   �M      N     7N  -   QN  -   N     �N     �N     �N  4   �N  5   O  D   IO  &   �O      �O      �O      �O      P     9P  B   OP  
   �P     �P     �P  \   �P     "Q     1Q  5   JQ     �Q  L   �Q  @   �Q  J   R     iR  &   ~R     �R  H   �R  ?   
S  7   JS  =   �S  >   �S  3   �S  (   3T  F   \T     �T     �T  /   �T     U     U     3U  B   9U  *   |U     �U     �U  ,   �U  >   V  e   FV  3   �V  j   �V  Y   KW     �W     �W     �W  7   �W  ,  X  j  ?Y  e  �^  �  d     �f     �f  7   �f     
g  2   )g  %   \g  &   �g  =   �g  <   �g  #   $h     Hh  ;   ^h  -   �h  !   �h     �h     �h  %   i  )   9i  ,   ci  :   �i     �i     �i     �i  1   	j  8   ;j  I   tj  �  �j  H  �l  K  �n  �  q     �t     �t  �  �t  �   �y  �  6z  �  �{  �  �~  �  A�  �  �  (   ��  0   �  "   J�  *   m�  *   ��  (   É  3   �  &    �  %   G�  `   m�  .   Ί  .   ��  @   ,�    m�  �  v�  �  t�  �  
�  B   �  I   *�  Q   t�  /   Ɨ  !   ��  =   �  )   V�  	   ��  
   ��     ��  (   ��  9   Ҙ     �  )   ,�     V�     o�  ?   ��     ̙     ҙ     �     �  H   ��  J   F�     ��  )   ��  4   Ԛ     	�  .   (�     W�  %   t�  ,   ��  %   Ǜ  %   �     �     .�     H�  ,   h�  -   ��  +   Ü     �      �  %   �  +   :�  ,   f�     ��  -   ��  G   ��  5   (�  7   ^�  !   ��     ��  L   ֞  J   #�     n�  A   ��          ޟ  !   ��     �     4�  @   O�  7   ��     Ƞ     ՠ     �  ;   ��  7   4�  H   l�  -   ��  !   �  !   �  !   '�  !   I�     k�  J   ��     ͢  !   ߢ     �  X   �     l�     |�  I   ��     �  A   ��  G   8�  Y   ��  "   ڤ  -   ��  '   +�  E   S�  :   ��  D   ԥ  <   �  B   V�  =   ��  &   צ  .   ��     -�  +   @�  (   l�     ��  *   ��  	   ҧ  F   ܧ  :   #�     ^�     v�  )   ��  =   ��  `   ��  B   ]�  k   ��  R   �     _�     m�     ��  =   ��     d   (       )   D   >      {   �   �   z   /   H   -   �   �   �   u   �           0          l   b   �       '   J       5   �   �   ;   .               n       �   y       @            N   �   �      }   �      7   6   ^                                 O       S   �   #   �   [   =          p       9       w                             B          m                  %          �   ,       I          !   f      +   4   &       A          G   �   j       
   �   s   ]      �      �   *   �   �   \   h   �   "   E                     M           $   	   �   a           _   2       ?   �   �   �                  3          �           �   q       �   �   �               t   :   �       �   L   P   k   �   ~       �   R   �      �   x       �       e   �   �   K   i   c   g   �   �   �   r   <   �   v   C       �   V   �   W   `   �   �   Y   X                 F   |   �   T   1   Q             o   8   Z       U    
For older syntax (second call format), OFFSET means -j OFFSET.  LABEL
is the pseudo-address at first byte printed, incremented when dump is
progressing.  For OFFSET and LABEL, a 0x or 0X prefix indicates
hexadecimal, suffixes maybe . for octal and b multiply by 512.

TYPE is made up of one or more of these specifications:

  a          named character
  c          ASCII character or backslash escape
  d[SIZE]    signed decimal, SIZE bytes per integer
  f[SIZE]    floating point, SIZE bytes per integer
  o[SIZE]    octal, SIZE bytes per integer
  u[SIZE]    unsigned decimal, SIZE bytes per integer
  x[SIZE]    hexadecimal, SIZE bytes per integer

SIZE is a number.  For TYPE in doux, SIZE may also be C for
sizeof(char), S for sizeof(short), I for sizeof(int) or L for
sizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D
for sizeof(double) or L for sizeof(long double).

RADIX is d for decimal, o for octal, x for hexadecimal or n for none.
BYTES is hexadecimal with 0x or 0X prefix, it is multiplied by 512
with b suffix, by 1024 with k and by 1048576 with m.  -s without a
number implies 3.  -w without a number implies 32.  By default, od
uses -A o -t d2 -w 16.
 
SETs are specified as strings of characters.  Most represent themselves.
Interpreted sequences are:

  \NNN            character with octal value NNN (1 to 3 octal digits)
  \\              backslash
  \a              audible BEL
  \b              backspace
  \f              form feed
  \n              new line
  \r              return
  \t              horizontal tab
  \v              vertical tab
  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order
  [CHAR1-CHAR2]   same as CHAR1-CHAR2, if both SET1 and SET2 use this
  [CHAR*]         in SET2, copies of CHAR until length of SET1
  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0
  [:alnum:]       all letters and digits
  [:alpha:]       all letters
  [:blank:]       all horizontal whitespace
  [:cntrl:]       all control characters
  [:digit:]       all digits
  [:graph:]       all printable characters, not including space
  [:lower:]       all lower case letters
  [:print:]       all printable characters, including space
  [:punct:]       all punctuation characters
  [:space:]       all horizontal or vertical whitespace
  [:upper:]       all upper case letters
  [:xdigit:]      all hexadecimal digits
  [=CHAR=]        all characters which are equivalent to CHAR
 
Translation occurs if -d is not given and both SET1 and SET2 appear.
-t may be used only when translating.  SET2 is extended to length of
SET1 by repeating its last character as necessary.  Excess characters
of SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to
expand in ascending order; used in SET2 while translating, they may
only be used in pairs to specify case conversion.  -s uses SET1 if not
translating nor deleting; else squeezing uses SET2 and occurs after
translation or deletion.
  on repetition %d
 %d: fmt="%s" width=%d
 %s: %lu: improperly formatted MD5 checksum line %s: FAILED open or read
 %s: `%d': line number out of range %s: `%s': match not found %s: `+' or `-' expected after delimeter %s: `}' is required in repeat count %s: cannot follow end of non-regular file %s: closing delimeter `%c' missing %s: disorder on %s
 %s: equivalence class operand must be a single character %s: input file is output file %s: integer expected after `%c' %s: invalid number %s: invalid pattern %s: invalid regular expression: %s %s: line number must be greater than zero %s: line number out of range %s: no properly formatted MD5 checksum lines found %s: read error %s: unrecognized option `-%c'
 %s: write error %s}: integer required between `{' and `}' Cannot specify both printing across and printing in parallel. Cannot specify number of columns when printing in parallel. Compare sorted files LEFT_FILE and RIGHT_FILE line by line.

  -1              suppress lines unique to left file
  -2              suppress lines unique to right file
  -3              suppress lines unique to both files
      --help      display this help and exit
      --version   output version information and exit
 Convert spaces in each FILE to tabs, writing to standard output.
With no FILE, or when FILE is -, read standard input.

  -a, --all           convert all whitespace, instead of initial whitespace
  -t, --tabs=NUMBER   have tabs NUMBER characters apart instead of 8
  -t, --tabs=LIST     use comma separated list of explicit tab positions
      --help          display this help and exit
      --version       output version information and exit

Instead of -t NUMBER or -t LIST, -NUMBER or -LIST may be used.
 Convert tabs in each FILE to spaces, writing to standard output.
With no FILE, or when FILE is -, read standard input.

  -i, --initial       do not convert TABs after non whitespace
  -t, --tabs=NUMBER   have tabs NUMBER characters apart, not 8
  -t, --tabs=LIST     use comma separated list of explicit tab positions
      --help          display this help and exit
      --version       output version information and exit

Instead of -t NUMBER or -t LIST, -NUMBER or -LIST may be used.
 Discard all but one of successive identical lines from INPUT (or
standard input), writing to OUTPUT (or standard output).

  -c, --count           prefix lines by the number of occurrences
  -d, --repeated        only print duplicate lines
  -f, --skip-fields=N   avoid comparing the first N fields
  -i, --ignore-case     ignore differences in case when comparing
  -s, --skip-chars=N    avoid comparing the first N characters
  -u, --unique          only print unique lines
  -w, --check-chars=N   compare no more than N characters in lines
  -N                    same as -f N
  +N                    same as -s N
      --help            display this help and exit
      --version         output version information and exit

A field is a run of whitespace, than non-whitespace characters.
Fields are skipped before chars.
 FAILED OK Output pieces of FILE separated by PATTERN(s) to files `xx01', `xx02', ...,
and output byte counts of each piece to standard output.

  -b, --suffix-format=FORMAT use sprintf FORMAT instead of %%d
  -f, --prefix=PREFIX        use PREFIX instead of `xx'
  -k, --keep-files           do not remove output files on errors
  -n, --digits=DIGITS        use specified number of digits instead of 2
  -s, --quiet, --silent      do not print counts of output file sizes
  -z, --elide-empty-files    remove empty output files
      --help                 display this help and exit
      --version              output version information and exit

Read standard input if FILE is -.  Each PATTERN may be:

  INTEGER            copy up to but not including specified line number
  /REGEXP/[OFFSET]   copy up to but not including a matching line
  %%REGEXP%%[OFFSET]   skip to, but not including a matching line
  {INTEGER}          repeat the previous pattern specified number of times
  {*}                repeat the previous pattern as many times as possible

A line OFFSET is a required `+' or `-' followed by a positive integer.
 Print CRC checksum and byte counts of each FILE.

  --help      display this help and exit
  --version   output version information and exit
 Print checksum and block counts for each FILE.

  -r              defeat -s, use BSD sum algorithm, use 1K blocks
  -s, --sysv      use System V sum algorithm, use 512 bytes blocks
      --help      display this help and exit
      --version   output version information and exit

With no FILE, or when FILE is -, read standard input.
 Print first 10 lines of each FILE to standard output.
With more than one FILE, precede each with a header giving the file name.
With no FILE, or when FILE is -, read standard input.

  -c, --bytes=SIZE         print first SIZE bytes
  -n, --lines=NUMBER       print first NUMBER lines instead of first 10
  -q, --quiet, --silent    never print headers giving file names
  -v, --verbose            always print headers giving file names
      --help               display this help and exit
      --version            output version information and exit

SIZE may have a multiplier suffix: b for 512, k for 1K, m for 1 Meg.
If -VALUE is used as first OPTION, read -c VALUE when one of
multipliers bkm follows concatenated, else read -n VALUE.
 Print last 10 lines of each FILE to standard output.
With more than one FILE, precede each with a header giving the file name.
With no FILE, or when FILE is -, read standard input.

  -c, --bytes=N            output the last N bytes
  -f, --follow             output appended data as the file grows
  -n, --lines=N            output the last N lines, instead of last 10
  -q, --quiet, --silent    never output headers giving file names
  -v, --verbose            always output headers giving file names
      --help               display this help and exit
      --version            output version information and exit

If the first character of N (the number of bytes or lines) is a `+',
print beginning with the Nth item from the start of each file, otherwise,
print the last N items in the file.  N may have a multiplier suffix:
b for 512, k for 1024, m for 1048576 (1 Meg).  A first OPTION of -VALUE
or +VALUE is treated like -n VALUE or -n +VALUE unless VALUE has one of
the [bkm] suffix multipliers, in which case it is treated like -c VALUE
or -c +VALUE.
 Print selected parts of lines from each FILE to standard output.

  -b, --bytes=LIST        output only these bytes
  -c, --characters=LIST   output only these characters
  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter
  -f, --fields=LIST       output only these fields
  -n                      (ignored)
  -s, --only-delimited    do not print lines not containing delimiters
      --help              display this help and exit
      --version           output version information and exit

Use one, and only one of -b, -c or -f.  Each LIST is made up of one
range, or many ranges separated by commas.  Each range is one of:

  N     N'th byte, character or field, counted from 1
  N-    from N'th byte, character or field, to end of line
  N-M   from N'th to M'th (included) byte, character or field
  -M    from first to M'th (included) byte, character or field

With no FILE, or when FILE is -, read standard input.
 Translate, squeeze, and/or delete characters from standard input,
writing to standard output.

  -c, --complement        first complement SET1
  -d, --delete            delete characters in SET1, do not translate
  -s, --squeeze-repeats   replace sequence of characters with one
  -t, --truncate-set1     first truncate SET1 to length of SET2
      --help              display this help and exit
      --version           output version information and exit
 Try `%s --help' for more information.
 Usage: %s [-DIGITS] [OPTION]... [FILE]...
 Usage: %s [OPTION] [FILE]...
 Usage: %s [OPTION] [INPUT [PREFIX]]
 Usage: %s [OPTION]... FILE PATTERN...
 Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... LEFT_FILE RIGHT_FILE
 Usage: %s [OPTION]... SET1 [SET2]
 Usage: %s [OPTION]... [FILE]...
 Usage: %s [OPTION]... [FILE]...
  or:  %s --traditional [FILE] [[+]OFFSET [[+]LABEL]]
 Usage: %s [OPTION]... [INPUT [OUTPUT]]
 WARNING: %d of %d computed %s did NOT match WARNING: %d of %d listed %s could not be read
 Wrap input lines in each FILE (standard input by default), writing to
standard output.

  -b, --bytes         count bytes rather than columns
  -s, --spaces        break at spaces
  -w, --width=WIDTH   use WIDTH columns instead of 80
 Write each FILE to standard output, last line first.
With no FILE, or when FILE is -, read standard input.

  -b, --before             attach the separator before instead of after
  -r, --regex              interpret the separator as a regular expression
  -s, --separator=STRING   use STRING as the separator instead of newline
      --help               display this help and exit
      --version            output version information and exit
 Write each FILE to standard output, with line numbers added.
With no FILE, or when FILE is -, read standard input.

  -b, --body-numbering=STYLE      use STYLE for numbering body lines
  -d, --section-delimiter=CC      use CC for separating logical pages
  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines
  -h, --header-numbering=STYLE    use STYLE for numbering header lines
  -i, --page-increment=NUMBER     line number increment at each line
  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one
  -n, --number-format=FORMAT      insert line numbers according to FORMAT
  -p, --no-renumber               do not reset line numbers at logical pages
  -s, --number-separator=STRING   add STRING after (possible) line number
  -v, --first-page=NUMBER         first line number on each logical page
  -w, --number-width=NUMBER       use NUMBER columns for line numbers
      --help                      display this help and exit
      --version                   output version information and exit

By default, selects -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC are
two delimiter characters for separating logical pages, a missing
second character implies :.  Type \\ for \.  STYLE is one of:

  a         number all lines
  t         number only nonempty lines
  n         number no lines
  pREGEXP   number only lines that contain a match for REGEXP

FORMAT is one of:

  ln   left justified, no leading zeros
  rn   right justified, no leading zeros
  rz   right justified, leading zeros

 Write lines consisting of the sequentially corresponding lines from
each FILE, separated by TABs, to standard output.
With no FILE, or when FILE is -, read standard input.

  -d, --delimiters=LIST   reuse characters from LIST instead of TABs
  -s, --serial            paste one file at a time instead of in parallel
      --help              display this help and exit
      --version           output version information and exit

 [=c=] expressions may not appear in string2 when translating a delimiter may be specified only when operating on fields at least one string must be given when squeezing repeats both files cannot be standard input cannot do ioctl on `%s' cannot skip past end of combined input cannot split in more than one way checksum checksums creating file `%s'
 ending field number argument to the `-k' option must be positive ending field spec has `.' but lacks following character offset error closing file error in regular expression search error reading %s error writing %s field specification has `,' but lacks following field spec file file truncated files flushing file in compatibility mode the last 2 arguments must be offsets in compatibility mode there may be no more than 3 arguments input disappeared invalid backslash escape `\%c' invalid backslash escape at end of string invalid byte or field list invalid character `%c' in type string `%s' invalid character class `%s' invalid conversion specifier in suffix: %c invalid conversion specifier in suffix: \%.3o invalid field number for file 1: `%s' invalid field number for file 2: `%s' invalid field number: `%s' invalid field specification `%s' invalid field specifier: `%s' invalid file number in field spec: `%s' invalid line number field width: `%s' invalid line number increment: `%s' invalid number invalid number `%s' invalid number of blank lines: `%s' invalid number of bytes to compare: `%s' invalid number of bytes to skip: `%s' invalid number of columns: `%s' invalid number of fields to skip: `%s' invalid output address radix `%c'; it must be one character from [doxn] invalid repeat count `%s' in [c*n] construct invalid second operand in compatibility mode `%s' invalid starting line number: `%s' invalid type string `%s' invalid type string `%s';
this system doesn't provide a %lu-byte floating point type invalid type string `%s';
this system doesn't provide a %lu-byte integral type limit argument line number `%s' is smaller than preceding line number, %lu minimum string length missing %% conversion specification in suffix missing conversion specifier in suffix missing list of fields missing list of positions no files may be specified when using --string no type may be specified when dumping strings number of bytes number of lines old-style offset only one [c*] repeat construct may appear in string2 only one argument may be specified when using --check only one string may be given when deleting without squeezing repeats only one type of list may be specified option `-T' requires an argument option `-k' requires an argument option `-o' requires an argument option `-t' requires an argument page width too narrow range-endpoints of `%s-%s' are in reverse collating sequence order read error separator cannot be empty skip argument specified number of bytes `%s' is larger than the maximum
representable value of type `long' standard input standard input is closed standard input: cannot follow end of non-regular file standard output starting field character offset argument to the `-k' option
must be positive starting field spec has `.' but lacks following character offset suppressing non-delimited lines makes sense
	only when operating on fields tab size cannot be 0 tab size contains an invalid character tab sizes must be ascending the --binary and --text options are meaningless when verifying checksums the --status option is meaningful only when verifying checksums the --string and --check options are mutually exclusive the --warn option is meaningful only when verifying checksums the [c*] construct may appear in string2 only when translating the [c*] repeat construct may not appear in string1 the delimiter must be a single character the starting field number argument to the `-k' option must be positive too few arguments too few non-option arguments too many %% conversion specifications in suffix too many arguments too many non-option arguments total two strings must be given when both deleting and squeezing repeats two strings must be given when translating unrecognized option `-%c' virtual memory exhausted warning: invalid width %lu; using %d instead warning: line number `%s' is the same as preceding line number warning: the ambiguous octal escape \%c%c%c is being
	interpreted as the 2-byte sequence \0%c%c, `%c' when not truncating set1, string2 must be non-empty when translating with complemented character classes,
string2 must map all characters in the domain to one when using the old-style +POS and -POS key specifiers,
the +POS specifier must come first width specification write error write error for `%s' you must specify a list of bytes, characters, or fields Project-Id-Version: GNU textutils 1.19m
POT-Creation-Date: 1997-01-26 20:32-0600
PO-Revision-Date: 1996-10-07 17:41 MET
Last-Translator: Michael Schmidt <michael@muc.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Bei Benutzung der �lteren Syntax (dem zweiten Aufrufformat), steht
OFFSET f�r -j OFFSET. MARKE ist die Pseudoadresse des ersten auszugebenden
Bytes, sie wird entsprechend erh�ht, wenn die Ausgabe fortschreitet. F�r
OFFSET und MARKE bedeutet ein 0x- oder 0X-Prefix bedeutet, Suffixe
k�nnen `.' f�r oktal und `b' f�r multipliziert mit 512 sein.

TYP setzt sich zusammen aus einer oder mehreren dieser Spezifikationen:

  a           ein benanntes Zeichen
  c           ASCII-Zeichen oder Backslash-Escape
  d[ANZAHL]   dezimal mit Vorzeichen, ANZAHL Bytes pro Zahl
  f[ANZAHL]   Flie�komma, ANZAHL Bytes pro Zahl
  o[ANZAHL]   oktal, ANZAHL Bytes pro Zahl
  u[ANZAHL]   dezimal ohne Vorzeichen, ANZAHL Bytes pro Zahl
  x[ANZAHL]   hexadezimal, ANZAHL Bytes pro Zahl

ANZAHL ist eine Zahl. Wenn TYP einer von `d', `o', `u', oder `x' ist,
kann ANZAHL auch `C' f�r sizeof(char),
`S' f�r sizeof(short) , `I' f�r sizeof(int) oder `L' f�r sizeof(long) sein.
Wenn TYP `f' ist, kann ANZAHL auch `F' f�r sizeof(float), `D' f�r sizeof(double)
oder `L' f�r sizeof(long double) sein.

RADIX ist `d' f�r dezimal, `o' f�r oktal, `x' f�r hexadezimal oder `n' f�r nichts.
BYTES ist hexadezimal mit 0x- oder 0X-Prefix, wird multipliziert mit 512
f�r Suffix `b', mit 1024 f�r `k' und mit 1048576 f�r `m'. -s ohne eine Zahl
impliziert `3'. -w ohne eine Zahl impliziert `32'. Standard ist -A o -t d2 -w 16.
 
MENGEn werden angegeben als Zeichenketten. Die meisten Zeichen stehen f�r sich
selbst. Interpretierte Folgen sind:

  \NNN            Zeichen mit Oktalwert NNN (1 bis 3 oktale Ziffern)
  \\              R�ckschr�gstrich
  \a              h�rbarer Ton (Piep)
  \b              Zeichen zur�ck
  \f              Seitenvorschub
  \n              Zeilenvorschub
  \r              Wagenr�cklauf
  \t              horizontaler Tabulator
  \v              vertikaler Tabulator
  ZEICH1-ZEICH2   alle Zeichen von ZEICH1 bis ZEICH2 aufsteigend
  [ZEICH1-ZEICH2] dasselbe wie ZEICH1-ZEICH2, wenn beide MENGEn es benutzen
  [ZEICH*]        in MENGE2, Kopien von ZEICH bis zur L�nge von MENGE1
  [ZEICH*ANZ]     ANZ Kopien von ZEICHEN, ANZ ist oktal, wenn es mit 0 beginnt
  [:alnum:]       alle Buchstaben und Ziffern
  [:alpha:]       alle Buchstaben
  [:blank:]       alle horizontalen Leerzeichen/Tabulatoren
  [:cntrl:]       alle Kontrollzeichen
  [:digit:]       alle Ziffern
  [:graph:]       alle druckbaren Zeichen, ohne Leerzeichen
  [:lower:]       alle Kleinbuchstaben
  [:print:]       alle druckbaren Zeichen, einschl. Leerzeichen
  [:punct:]       alle Satzzeichen
  [:space:]       alle horizontalen oder vertikalen Leerzeichen/Tabulatoren
  [:upper:]       alle Gro�buchstaben
  [:xdigit:]      alle hexadezimalen Ziffern
  [=ZEICHEN=]     alle Zeichen �quivalent zu ZEICHEN
 
�bersetzung wird durchgef�hrt, wenn nicht -d spezifiziert ist und sowohl
MENGE1 als auch MENGE2 angegeben sind. -t darf nur bei �bersetzung
benutzt werden. MENGE2 wird wenn n�tig durch Wiederholung des letzten Zeichens
auf die L�nge von MENGE1 vergr��ert. Zus�tzliche
Zeichen in MENGE2 werden ignoriert. Nur [:lower:] und [:upper:] werden
mit Sicherheit in aufsteigender Reihenfolge expandiert. In MENGE2 d�rfen
sie zum �bersetzen nur in Paaren benutzt werden um eine Gro�-/Klein-
schreibung anzuzeigen. -s benutzt MENGE1, wenn nicht �berstzt oder
gel�scht wird; andernfalls wird MENGE2 zum Verdichten benutzt und erscheint
nach �bersetzung und L�schung.
  bei Wiederholung von %d
 %d: fmt="%s" width=%d
 %s: %lu: nicht korrekt formatierte MD5 Checksummenzeile %s: Fehler bei open oder read
 %s: `%d': Zeilennummer nicht im zul�ssigen Bereich %s: `%s': keine Entsprechung gefunden %s: `+' oder `-' nach Trenner erwartet %s: `}' ist bei Angabe einer Wiederholungsanzahl erforderlich %s: darf nicht nach dem Ende einer nichtregul�ren Datei sein %s: schlie�ender Trenner `%c' fehlt %s: Unordnung bei %s
 %s: �quivalenzklassenoperand mu� ein einzelnes Zeichen sein %s: Eingabedatei und Ausgabedatei sind gleich %s: ganze Zahl nach `%c' erwartet %s: ung�ltige Zahl %s: ung�ltiges Muster %s: ung�ltiger regul�rer Ausdruck: %s %s: Zeilennummer mu� gr��er als Null sein %s: Zeilennummer nicht im zul�ssigen Bereich %s: nicht korrekt formatierte MD5 Pr�fsummenzeile gefunden %s: Lesefehler %s: unbekannte Option `-%c'
 %s: Schreibfehler %s}: ganze Zahl zwischen `{' and `}' erforderlich Kann nicht gleichzeitig parallel und �berkreuz ausgeben. Kann die Anzahl der Spalten nicht angeben, wenn parallel ausgegeben wird. Vergleiche sortierte Dateien LINKE_DATEI und RECHTE_DATEI Zeile f�r Zeile.

  -1              unterdr�cke Zeilen, die nur in LINKE_DATEI auftauchen
  -2              unterdr�cke Zeilen, die nur in RECHTE_DATEI auftauchen
  -3              unterdr�cke Zeilen, die nur in einer der beiden Dateien
                  auftauchen
      --help      gib diese Hilfe aus und beende das Programm
      --version   gib Versionsinformation aus und beende das Programm
 �bersetze alle Leerzeichen in jeder DATEI in Tabulatoren, schreibe auf
Standardausgabe. Ohne DATEI oder wenn DATEI - ist, lies
Standardeingabe.

  -a, --all           �bersetze alle Leerzeichen, statt nur f�hrender
  -t, --tabs=ANZAHL   nimm Tabulatoren alle ANZAHL Zeichen an statt 8
  -t, --tabs=LISTE    benutze mit Kommata getrennte Liste von Tabulatorpositionen
      --help          gib diese Hilfe aus und beende das Programm
      --version       gib Versionsinformation aus und beende das Programm

Statt -t ANZAHL oder -t LISTE darf auch -ANZAHL oder -LISTE
benutzt werden.
 �bersetze Tabulatoren in jeder DATEI in Leerzeichen, schreibe auf
Standardausgabe. Wurde keine DATEI angegeben, oder ist DATEI `-',
lies Standardeingabe.

  -i, --initial       �bersetze TABs nicht nach Nichtleerzeichen
  -t, --tabs=ZAHL     nimm Tabulatoren alle ZAHL Zeichen an, nicht 8
  -t, --tabs=LISTE    benutze durch Komma getrennte LISTE von Tab.-positionen
      --help          gib diese Hilfe aus und beende das Programm
      --version       gib Versionsinformation aus und beende das Programm

Anstelle von -t ZAHL oder -t LISTE darf auch -ZAHL oder -LISTE benutzt werden.
 L�sche alle hintereinanderstehenden identischen Zeilen von EINGABE
(oder Standardeingabe) bis auf eine, und schreibe auf AUSGABE (oder
Standardausgabe).

  -c, --count           beginne Zeilen mit der Anzahl der Vorkommen
  -d, --repeated        gib nur die doppelten Zeilen aus
  -f, --skip-fields=N   vergleiche nicht die ersten N Felder
  -i, --ignore-case     ignoriere Gro�/Kleinschreibung
  -s, --skip-chars=N    vergleiche nicht die ersten N Zeichen
  -u, --unique          gib nur einmal vorkommende Zeilen aus
  -w, --check-chars=N   vergleiche nicht mehr als N Zeichen pro Zeile
  -N                    dasselbe wie -f N
  +N                    dasselbe wie -s N
      --help            gib diese Hilfe aus und beende das Programm
      --version         gib Versionsinformation aus und beende das Programm

Ein Feld ist eine Folge von Leerzeichen/Tabs gefolgt von anderen Zeichen.
Felder werden vor Zeichen �bersprungen.
 Fehler Ok Gib Teile der DATEI getrennt durch MUSTER in die Dateien `xx01', `xx02',... aus,
und gib die Bytezahl f�r jedes Teil auf Standardausgabe aus.

  -b, --suffix-format=FORMAT benutze sprintf-FORMAT anstelle von %%d
  -f, --prefix=PREFIX        benutze PREFIX anstelle von `xx'
  -k, --keep-files           l�sche Ausgabedateien bei Fehler nicht
  -n, --digits=ZIFFERN       benutze angegebene Anzahl Ziffern anstelle von 2
  -s, --quiet, --silent      gib keine Bytezahlen der Ausgabedateigr��en aus
  -z, --elide-empty-files    l�sche leere Ausgabedateien
      --help                 gib diese Hilfe aus und beende das Programm
      --version              gib Versionsinformation aus und beende

Lies Standardeingabe, wenn DATEI `-' ist. Jedes MUSTER kann sein:

  GANZZAHL           kopiere bis zu angebener Zeilennumer ausschlie�lich
  /REGEXP/[OFFSET]   kopiere bis zu entsprechender Zeile ausschlie�lich
  %%REGEXP%%[OFFSET]   �bergehe bis zu entsprechender Zeile ausschlie�lich
  {GANZZAHL}         wiederhole das vorherige Muster sooft wie angegeben
  {*}                wiederhole das vorherige Muster sooft wie m�glich

Ein Zeilen-OFFSET ist ein `+' or `-' gefolgt von einer
positiven ganzen Zahl.
 Gib CRC-Checksumme und Byteanzahl f�r jede DATEI aus.

  --help      gib diese Hilfe aus und beende das Programm
  --version   gib Versionsinformation aus und beende das Programm
 Gib Pr�fsumme und Blockanzahl f�r jede DATEI aus.

  -r              benutze BSD-Summenalgoritmus, verwende 1K Bl�cke (Voreinstellung)
  -s, --sysv      benutze SystemV-Summenalgorithmus, verwende 512 Byte-Bl�cke
      --help      gib diese Hilfe aus und beende das Programm
      --version   gib Versionsinformation aus und beende das Programm

Ohne DATEI oder wenn DATEI `-' ist, lies Standardeingabe.
 Gib die ersten 10 Zeilen jeder DATEI auf Standardausgabe aus.
Mit mehr als einer DATEI, gib vorab den Dateinamen aus.
Ohne DATEI oder DATEI ist -, lies Standardeingabe.

  -c, --bytes=GR�SSE       gib erste GR�SSE Bytes aus
  -n, --lines=ANZAHL       gib erste ANZAHL Zeilen statt 10 aus
  -q, --quiet, --silent    gib nie Dateinamen vorab aus
  -v, --verbose            gib immer Dateinamen vorab aus
      --help               gib diese Hilfe aus und beende das Programm
      --version            gib Versionsinformation aus und beende das Programm

GR�SSE kann ein Vervielfachungssuffix haben: `b' f�r 512, `k' f�r 1K, `m' f�r 1M.
When -WERT als erste OPTION benutzt wird, lies -c WERT, wenn einer der
Vervielf�ltiger bkm folgt, sonst lies -n WERT.
 Gib die letzten 10 Zeilen jeder DATEI auf Standardausgabe aus.
Wurden mehre DATEIen angegeben, gib zun�chst den Dateinamen aus.
Ohne DATEI oder wenn DATEI ist `-', lies von der Standardeingabe.

  -c, --bytes=N            gib die letzten N Bytes aus
  -f, --follow             gib angef�gte Daten aus, wenn die Datei w�chst
  -n, --lines=N            gib die letzten N Zeilen aus, anstelle von 10
  -q, --quiet, --silent    gib nie Dateinamen aus
  -v, --verbose            gib immer Dateinamen aus
      --help               gib diese Hilfe aus und beende das Programm
      --version            gib Versionsinformation aus und beende das Programm

Wenn das erste Zeichen von N (der Anzahl der Bytes oder Zeilen) ein `+' ist,
beginne die Ausgabe mit dem Nten Byte bzw. der Nten Zeile vom Anfang jeder Datei,
andernfalls gib die letzten N Bytes bzw. Zeilen aus. N kann einen Vervielfachungs-
suffix haben: `b' f�r 512, `k' f�r 1024, `m' f�r 1048576 (1 Meg). Eine erste OPTION
der Form -WERT oder +WERT wird behandelt wie -n WERT oder -n +WERT, es sei
denn WERT hat einen der [bkm]-Suffixe, in welchem Falle sie wie -c WERT
oder -c +WERT behandelt werden.
 Print selected parts of lines from each FILE to standard output.

  -b, --bytes=LIST        output only these bytes
  -c, --characters=LIST   output only these characters
  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter
  -f, --fields=LIST       output only these fields
  -n                      (ignored)
  -s, --only-delimited    do not print lines not containing delimiters
      --help              display this help and exit
      --version           output version information and exit

Use one, and only one of -b, -c or -f.  Each LIST is made up of one
range, or many ranges separated by commas.  Each range is one of:

  N     N'th byte, character or field, counted from 1
  N-    from N'th byte, character or field, to end of line
  N-M   from N'th to M'th (included) byte, character or field
  -M    from first to M'th (included) byte, character or field

With no FILE, or when FILE is -, read standard input.
 �bersetze, verdichte, und/oder l�sche Zeichen von Standardeingabe,
schreibe auf Standardausgabe.

  -c, --complement        erstes Komplement MENGE1
  -d, --delete            l�sche Zeichen der MENGE1, �bersetze nicht
  -s, --squeeze-repeats   ersetze Zeichenfolgen durch ein Zeichen
  -t, --truncate-set1     schneide zuerst MENGE1 auf die L�nge von MENGE2 ab
      --help              gib diese Hilfe aus und beende das Programm
      --version           gib Versionsinformation aus und beende das Programm
 `%s --help' gibt weitere Informationen.
 Benutzung: %s [-ZIFFERN] [OPTION]... [DATEI]...
 Benutzung: %s [OPTION] [DATEI]...
 Benutzung: %s [OPTION] [EINGABE [PREFIX]]
 Benutzung: %s [OPTION]... DATEI MUSTER...
 Benutzung: %s [OPTION]... DATEI1 DATEI2
 Benutzung: %s [OPTION]... RECHTE_DATEI LINKE_DATEI
 Benutzung: %s [OPTION]... SET1 [SET2]
 Benutzung: %s [OPTION]... [DATEI]...
 Benutzung: %s [OPTION]... [DATEI]...
  oder:    %s --traditional [DATEI] [[+]OFFSET [[+]MARKE]]
 Benutzung: %s [OPTION]... [EINGABE [AUSGABE]]
 Warnung: %d von %d berechneten %s pa�ten NICHT Warnung: %d von %d aufgef�hrten %s konnten nicht gelesen werden
 Brich Eingabezeilen jeder DATEI um (Voreinstellung Standardeingabe),
gib das Ergebnis auf Standardausgabe aus.

  -b, --bytes         z�hle Bytes anstatt Spalten
  -s, --spaces        Umbruch bei Leerzeichen
  -w, --width=BREITE  benutze BREITE Spalten anstatt 80
 Schreibe jede DATEI nach Standardausgabe, letzte Zeile zuerst.
Wurde keine DATEI angegeben oder ist DATEI `-', lies Standardeingabe.

  -b, --before             f�ge Trennzeichen vorher statt hinterher ein
  -r, --regex              interpretiere das Trennzeichen als reg. Ausdruck
  -s, --separator=KETTE    benutze KETTE als Trenzeichen statt Zeilenumbruch
      --help               gib diese Hilfe aus und beende das Programm
      --version            gib Versionsinformation aus und beende das Programm
 Schreibe jede DATEI mit Zeilennummern nach Standardausgabe.
Ohne DATEI oder wenn DATEI `-' ist, lies Standardeingabe.

  -b, --body-numbering=STIL       benutze STIL zur Numerierung
  -d, --section-delimiter=CC      benutze CC um logische Seiten zu trennen
  -f, --footer-numbering=STIL     benutze STIL um Fu�zeilen zu numerieren
  -h, --header-numbering=STIL     benutze STIL um Kopfzeilen zu numerieren
  -i, --page-increment=ANZAHL     Zeilennummerinkrement in jeder Zeile
  -l, --join-blank-lines=ANZAHL   ANZAHL Leerzeilen z�hlen als eine
  -n, --number-format=FORMAT      f�ge Zeilennummern gem�� FORMAT ein
  -p, --no-renumber               setze logische Zeilennummer am
                                  Anfang von logischen Seiten nicht zur�ck
  -s, --number-separator=KETTE    f�ge KETTE nach (m�glicher) Zeilennummer ein
  -v, --first-page=ANZAHL         erste Zeilennummer auf jeder logischen Seite
  -w, --number-width=ANZAHL       benutze ANZAHL Spalten f�r Zeilennummern
      --help                      gib diese Hilfe aus und beende das Programm
      --version                   gib Versionsinformation aus und beende

Standardeinstellung ist -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC sind
zwei Begrenzungszeichen um logische Seiten zu trennen, ein fehlendes zweites
Zeichen impliziert `:'. Geben Sie \\ f�r \ ein. STIL ist einer aus:

  a         numeriere alle Zeilen
  t         numeriere nur nichtleere Zeilen
  n         numeriere keine Zeilen
  pREGEXP   numeriere nur Zeilen, auf die REGEXP pa�t

FORMAT ist eines der folgenden:

  ln   linksb�ndig, keine f�hrenden Nullen
  rn   rechtsb�ndig, keine f�hrenden Nullen
  rz   rechtsb�ndig, f�hrende Nullen

 Gib Zeilen auf Standardausgabe aus, die aus sequenziell sich
entsprechenden Zeilen jeder DATEI bestehen, getrennt durch TABs.
Ohne DATEI oder wenn DATEI - ist, lies Standardeingabe.

  -d, --delimiters=LISTE  benutzer Zeichen aus LISTE anstelle von TABs
  -s, --serial            gib Dateien nacheinander aus anstelle parallel
      --help              gib diese Hilfe aus und beende das Programm
      --version           gib Versionsinformation aus und beende das Programm

 [=c=] Ausdr�cke d�rfen beim �bersetzen nicht in String2 auftauchen Ein Begrenzer darf nur angegeben werden, wenn auf Feldern gearbeitet wird Beim L�schen von Wiederholungen mu� mindestens
eine Zeichenkette angegeben werden Nicht beide Dateien k�nnen Standardeingabe sein Kann kein ioctl auf `%s' anwenden Kann nicht hinter das Ende der kombinierten Eingabe vorr�cken Kann nicht auf mehr als eine Art splitten Pr�fsumme Pr�fsummen Lege Datei `%s' an
 Endfeld der Option `-k' mu� positiv sein Endfeldangabe hat `.' aber keinen folgenden Zeichenoffset Fehler beim Schlie�en der Datei Fehler bei Suche mit regul�ren Ausdr�cken Fehler beim Lesen von %s Fehler beim Schreiben von %s Feldspezifikation hat `,' aber keine folgende Feldspezifikation Datei Datei abgeschnitten Dateien �bergahe Datei Im Kompatibilit�tsmodus m�ssen die letzten beiden Argumente Offsets sein Im Kompatibilit�tsmodus d�rfen nicht mehr als 3 Arguments angegeben werden Eingabe ist verschwunden Ung�ltige R�ckschr�gstrichbenutzung `\%c' Ung�ltiger R�ckschr�gstrich am Ende der Zeichenkette Ung�ltige Byte- oder Feldliste Ung�ltiges Zeichen `%c� in Typbezeichnung `%s' Ung�ltige Zeichenklasse `%s' Umwandlungsangabe fehlt im Suffix: %c Ung�ltige Umwandlungsangabe im Suffix: \%.3o Ung�ltige Feldnummer f�r Datei1: `%s' Ung�ltige Feldnummer f�r Datei2: `%s' Ung�ltige Feldnummer: `%s' Ung�ltige Feldangabe `%s' Ung�ltiger Feldbezeichner: `%s' Ung�ltige Feldnummer in Feldbezeichner: `%s' Ung�ltige Breite des Zeilennumernfeldes: `%s' Ung�ltiges Inkrement f�r Zeilennummer: `%s' Ung�ltige Anzahl Ung�ltige Zahl `%s' Ung�ltige Anzahl von Leerzeilen: `%s' Ung�ltige Anzahl Bytes zu vergleichen: `%s' Ung�ltige Anzahl Bytes zu �berspringen: `%s' Ung�ltige Anzahl Spalten: `%s' Ung�ltige Anzahl Felder zu �berspringen: `%s' Ung�ltiger Ausgabeaddressradix `%c'; es mu� ein Zeichen aus [doxn] sein Ung�ltige Wiederholungsangabe `%s' in [c*n] Konstrukt Ung�ltiger zweiter Operand im Kompatibilit�tsmodus `%s' Ung�ltige Startzeilennummer: `%s' Ung�ltige Typbezeichnung `%s' Ung�ltiger Typ `%s';
dieses System hat keinen %lu-Byte gro�en Gleitkomma-Typ Ung�ltiger Typ `%s';
dieses System hat keinen %lu-Byte gro�en Ganzzahl-Typ Begrenze Argument Zeilennummer `%s' ist kleiner als vorhergehende Zeilennummer, %lu Minimale Zeichenkettenl�nge Fehlende %%-Angabe im Suffix Umwandlungsangabe fehlt im Suffix Liste der Felder fehlt Liste der Positionen fehlt Bei Benutzung von --string d�rfen keine Dateien angegeben werden Bei Zeichenkettenausgabe darf kein Typ angegeben werden Anzahl Bytes Anzahl Zeilen Offset der alten Art Nur eine [c*] Wiederholungsangabe darf in String2 auftreten Bei Benutzung von --check ist nur ein Argument zul�ssig Beim L�schen ohne Verdichten darf nur eine Zeichenkette angegeben werden Nur ein Typ einer Liste kann angegeben werden Option `-T' ben�tigt ein Argument Option `-k' ben�tigt ein Argument Option `-o' ben�tigt ein Argument Option `-t' ben�tigt ein Argument Seitenbreite zu schmal Die Endpunkte des Bereiches `%s-%s' sind in umgekehrter Sortierreihenfolge Fehler beim Lesen Trennzeichen darf nicht leer sein �bergehe Argument Angebene Anzahl Bytes `%s' ist gr��er als der maximale darstellbare
Wert des Typs `long� Standardeingabe Standardeingabe ist geschlossen Standardeingabe: darf nicht nach dem Ende einer nichtregul�ren Datei sein Standardausgabe Der Offset des Startfeldzeichens der Option `-k' mu� positiv sein Die Startfeldangabe hat einen `.' jedoch keinen folgenden Zeichenoffset Nicht-getrennte Zeilen zu unterdr�cken ist nur sinnvoll,
	wenn auf Feldern operiert wird. Tabulatorgr��e mu� ungleich 0 sein Tabulatorgr��e enth�lt ein ung�ltiges Zeichen Tabulatorgr��en m�ssen aufsteigend sein --binary und --text sind bei der der Kontrolle von Pr�fsummen sinnlos --status ist nur bei der Kontrolle von Pr�fsummen sinnvoll Die --string und die --check Optionen schlie�en sich gegenseitig aus --warn ist nur nur bei der Kontrolle von Pr�fsummen sinnvoll Das [c*] Konstrukt darf in Kette2 nur bei �bersetzungen auftauchen Die [c*] Wiederholungsangabe darf nicht in String1 erscheinen Trenner mu� ein einzelnes Zeichen sein Das Startfeld der `-k' Option mu� positiv sein Zuwenige Argumente Zuwenige Argumente, die keine Optionen sind Zu viele %%-Umwandlungsangaben im Suffix Zuviele Argumente Zuviele Argumente, die keine Optionen sind insgesamt Beim L�schen mit Verdichten m�ssen zwei Zeichenketten angegeben werden Beim �bersetzen m�ssen zwei Zeichenketten angegeben werden Unbekannte Option `-%c' Virtueller Speicher ersch�pft Warnung: ung�ltige Breite %lu; benutze %d Warnung: Zeilennummer `%s' ist dieselbe wie die vorhergehende Warnung: die mehrdeutige Oktal-Escape \%c%c%c wird als 2-Byte-Folge
	 \0%c%c, `%c' interpretiert Wenn Menge1 nicht abgeschnitten wird, darf String2 nicht leer sein Beim �bersetzen mit "complemented character classes" mu�
String2 alle Zeichen im Bereich auf eines abbilden wenn +POS und -POS Schl�sselspezifikationen benutzt werden,
mu� +POS zuerst kommen Breitenangabe Fehler beim Schreiben Fehler beim Schreiben von `%s' Sie m�ssen eine Liste von Bytes, Zeichen oder Feldern angeben 