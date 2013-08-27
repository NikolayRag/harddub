## For Support visit
## https://github.com/NikolayRag/harddub
## ---------------------------------------------------------------------------
## 	  harddub - sequental backup utilitu for use with NTFS hardlinks
##    Copyright (C) Nikolay Ragozin
##
##    Dub creates entire copy of source using simple rules:
##    full dir structure is created
##    newer (and older) files are copied
##    other files are hardlinked (NTFS NEEDED!) to last Dubase
##    missing files are skipped.
##
##    Being hardlinked, each dub becones autonome and consumes only ammount
##    of disk neccesery for new files.
##    Each dub can be readed or deleted without any influence to the other dubs.
##
##    harddub is ready for compiling with freewrap
##
##    This program is supplied WITHOUT ANY WARRANTY; without even the implied
##    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
##
##    This program is free software: you can redistribute it and/or modify
##    it under the terms of the GNU General Public License as published by
##    the Free Software Foundation, either version 3 of the License, or
##    (at your option) any later version.
##    See the GNU General Public License for more details
##    http://www.gnu.org/licenses/gpl-3.0.html
##
## ---------------------------------------------------------------------------



###############MSGCAT copy to use freewrap (dont remember what problem was)##############
package ifneeded msgcat 1.4.1 {
	package provide msgcat 1.4.1
	namespace eval msgcat {namespace export mc mcload mclocale mcmax mcmset mcpreferences mcset mcunknown; variable Locale "" Loclist {} Msgs [dict create] WinRegToISO639 [dict create 01 ar 0401 ar_SA 0801 ar_IQ 0c01 ar_EG 1001 ar_LY 1401 ar_DZ 1801 ar_MA 1c01 ar_TN 2001 ar_OM 2401 ar_YE 2801 ar_SY 2c01 ar_JO 3001 ar_LB 3401 ar_KW 3801 ar_AE 3c01 ar_BH 4001 ar_QA 02 bg 0402 bg_BG 03 ca 0403 ca_ES 04 zh 0404 zh_TW 0804 zh_CN 0c04 zh_HK 1004 zh_SG 1404 zh_MO 05 cs 0405 cs_CZ 06 da 0406 da_DK 07 de 0407 de_DE 0807 de_CH 0c07 de_AT 1007 de_LU 1407 de_LI 08 el 0408 el_GR 09 en 0409 en_US 0809 en_GB 0c09 en_AU 1009 en_CA 1409 en_NZ 1809 en_IE 1c09 en_ZA 2009 en_JM 2409 en_GD 2809 en_BZ 2c09 en_TT 3009 en_ZW 3409 en_PH 0a es 040a es_ES 080a es_MX 0c0a es_ES@modern 100a es_GT 140a es_CR 180a es_PA 1c0a es_DO 200a es_VE 240a es_CO 280a es_PE 2c0a es_AR 300a es_EC 340a es_CL 380a es_UY 3c0a es_PY 400a es_BO 440a es_SV 480a es_HN 4c0a es_NI 500a es_PR 0b fi 040b fi_FI 0c fr 040c fr_FR 080c fr_BE 0c0c fr_CA 100c fr_CH 140c fr_LU 180c fr_MC 0d he 040d he_IL 0e hu 040e hu_HU 0f is 040f is_IS 10 it 0410 it_IT 0810 it_CH 11 ja 0411 ja_JP 12 ko 0412 ko_KR 13 nl 0413 nl_NL 0813 nl_BE 14 no 0414 no_NO 0814 nn_NO 15 pl 0415 pl_PL 16 pt 0416 pt_BR 0816 pt_PT 17 rm 0417 rm_CH 18 ro 0418 ro_RO 19 ru 1a hr 041a hr_HR 081a sr_YU 0c1a sr_YU@cyrillic 1b sk 041b sk_SK 1c sq 041c sq_AL 1d sv 041d sv_SE 081d sv_FI 1e th 041e th_TH 1f tr 041f tr_TR 20 ur 0420 ur_PK 0820 ur_IN 21 id 0421 id_ID 22 uk 0422 uk_UA 23 be 0423 be_BY 24 sl 0424 sl_SI 25 et 0425 et_EE 26 lv 0426 lv_LV 27 lt 0427 lt_LT 28 tg 0428 tg_TJ 29 fa 0429 fa_IR 2a vi 042a vi_VN 2b hy 042b hy_AM 2c az 042c az_AZ@latin 082c az_AZ@cyrillic 2d eu 2e wen 042e wen_DE 2f mk 042f mk_MK 30 bnt 0430 bnt_TZ 31 ts 0431 ts_ZA 33 ven 0433 ven_ZA 34 xh 0434 xh_ZA 35 zu 0435 zu_ZA 36 af 0436 af_ZA 37 ka 0437 ka_GE 38 fo 0438 fo_FO 39 hi 0439 hi_IN 3a mt 043a mt_MT 3b se 043b se_NO 043c gd_UK 083c ga_IE 3d yi 043d yi_IL 3e ms 043e ms_MY 083e ms_BN 3f kk 043f kk_KZ 40 ky 0440 ky_KG 41 sw 0441 sw_KE 42 tk 0442 tk_TM 43 uz 0443 uz_UZ@latin 0843 uz_UZ@cyrillic 44 tt 0444 tt_RU 45 bn 0445 bn_IN 46 pa 0446 pa_IN 47 gu 0447 gu_IN 48 or 0448 or_IN 49 ta 4a te 044a te_IN 4b kn 044b kn_IN 4c ml 044c ml_IN 4d as 044d as_IN 4e mr 044e mr_IN 4f sa 044f sa_IN 50 mn 51 bo 0451 bo_CN 52 cy 0452 cy_GB 53 km 0453 km_KH 54 lo 0454 lo_LA 55 my 0455 my_MM 56 gl 0456 gl_ES 57 kok 0457 kok_IN 58 mni 0458 mni_IN 59 sd 5a syr 045a syr_TR 5b si 045b si_LK 5c chr 045c chr_US 5d iu 045d iu_CA 5e am 045e am_ET 5f ber 045f ber_MA 60 ks 0460 ks_PK 0860 ks_IN 61 ne 0461 ne_NP 0861 ne_IN 62 fy 0462 fy_NL 63 ps 64 tl 0464 tl_PH 65 div 0465 div_MV 66 bin 0466 bin_NG 67 ful 0467 ful_NG 68 ha 0468 ha_NG 69 nic 0469 nic_NG 6a yo 046a yo_NG 70 ibo 0470 ibo_NG 71 kau 0471 kau_NG 72 om 0472 om_ET 73 ti 0473 ti_ET 74 gn 0474 gn_PY 75 cpe 0475 cpe_US 76 la 0476 la_VA 77 so 0477 so_SO 78 sit 0478 sit_CN 79 pap 0479 pap_AN]}
	proc msgcat::mc {src args} {variable Msgs; variable Loclist; variable Locale; set ns [uplevel 1 [list ::namespace current]]; while {$ns != ""} {foreach loc $Loclist {if {[dict exists $Msgs $loc $ns $src]} {if {[llength $args] == 0} {return [dict get $Msgs $loc $ns $src]} else {return [uplevel 1 [linsert $args 0 ::format [dict get $Msgs $loc $ns $src]]]}}}; set ns [namespace parent $ns]}; return [uplevel 1 [linsert $args 0 [::namespace origin mcunknown] $Locale $src]]}
	proc msgcat::mclocale {args} {variable Loclist; variable Locale; set len [llength $args]; if {$len > 1} {return -code error "wrong # args: should be \"[lindex [info level 0] 0] ?newLocale?\""}; if {$len == 1} {set Locale [string tolower [lindex $args 0]]; set Loclist {}; set word ""; foreach part [split $Locale _] {set word [string trim "${word}_${part}" _]; if {$word ne [lindex $Loclist 0]} {set Loclist [linsert $Loclist 0 $word]}}; lappend Loclist {}; set Locale [lindex $Loclist 0]}; return $Locale}
	proc msgcat::mcpreferences {} {variable Loclist; return $Loclist}
	proc msgcat::mcload {langdir} {set x 0; foreach p [mcpreferences] {if { $p eq {} } {set p ROOT}; set langfile [file join $langdir $p.msg]; if {[file exists $langfile]} {incr x; set f [open $langfile r]; fconfigure $f -encoding utf-8; set data [read $f]; close $f; uplevel 1 $data}}; return $x}
	proc msgcat::mcset {locale src {dest ""}} {variable Msgs; if {[llength [info level 0]] == 3} {set dest $src}; set ns [uplevel 1 [list ::namespace current]]; set locale [string tolower $locale]; if {![dict exists $Msgs $locale]} {dict set Msgs $locale  [dict create]}; if {![dict exists $Msgs $locale $ns]} {dict set Msgs $locale $ns [dict create]}; dict set Msgs $locale $ns $src $dest; return $dest}
	proc msgcat::mcmset {locale pairs } {variable Msgs; set length [llength $pairs]; if {$length % 2} {return -code error "bad translation list: should be \"[lindex [info level 0] 0] locale {src dest ...}\""}; set locale [string tolower $locale]; set ns [uplevel 1 [list ::namespace current]]; if {![dict exists $Msgs $locale]} {dict set Msgs $locale  [dict create]}; if {![dict exists $Msgs $locale $ns]} {dict set Msgs $locale $ns [dict create]}; foreach {src dest} $pairs {dict set Msgs $locale $ns $src $dest}; return $length}
	proc msgcat::mcunknown {locale src args} {if {[llength $args]} {return [uplevel 1 [linsert $args 0 ::format $src]]} else {return $src}}
	proc msgcat::mcmax {args} {set max 0; foreach string $args {set translated [uplevel 1 [list [namespace origin mc] $string]]; set len [string length $translated]; if {$len>$max} {set max $len}}; return $max}
	proc msgcat::ConvertLocale {value} {if {![regexp {^([^_.@]+)(_([^.@]*))?([.]([^@]*))?(@(.*))?$} $value -> language _ territory _ codeset _ modifier]} {return -code error "invalid locale '$value': empty language part"}; set ret $language; if {[string length $territory]} {append ret _$territory}; if {[string length $modifier]} {append ret _$modifier}; return $ret}
	proc msgcat::Init {} {foreach varName {LC_ALL LC_MESSAGES LANG} {if {[info exists ::env($varName)] && ("" ne $::env($varName))} {if {![catch {mclocale [ConvertLocale $::env($varName)]}]} return}}; if { $::tcl_platform(platform) ne "windows" } {mclocale C; return}; set key {HKEY_CURRENT_USER\Control Panel\International}; if {[catch {package require registry}] || [catch {registry get $key "locale"} locale]} {mclocale C; return}; variable WinRegToISO639; set locale [string tolower $locale]; while {[string length $locale]} {if {![catch {mclocale [ConvertLocale [dict get $WinRegToISO639 $locale]]}]} return;	set locale [string range $locale 1 end]}; mclocale C}
	msgcat::Init
}
############### MSGCAT out ##############

array set sw {v 1 s 1 csv 0 vers 0 nocompare 0 x {}}

if {![info exists argv]} {	#this is for debug
	set argv {-v0 {g:\TheKitchenRoot1\RenderWS\\} {g:\TheKitchenRoot1\ProjectWS} {g:\TheKitchenRoot1\SupportWS\*.*}  {G:\TheKitchenRoot1\!backup}}
	set argv {-versions {g__TheKitchenRoot1_SupportWS\*.*} {g__TheKitchenRoot1_SupportWS\*.txt}  {G:\TheKitchenRoot1\!backup}}
}

if {$argv=={}} {puts "Useage:	harddub.exe \[-csv\] \[-v1|-v2\] \[-s\] \[-x exclude\] \[-x...\] src ... dst
	or
	harddub.exe -versions src ... dst

	Copy every SRC file/folder to DST with establishing hardlinks at DST side.
	The \"\\\" symbol at the end of the SRC acts as \"\\*.*\", telling to dub everything in SRC separately instead of dubing SRC itself
	-csv	Print every successfull dub to stdout as comma-separated list
		as \"date,time,source,destination,copied,size,linked\"
	-s	Suppress filelist save. By default complete list is saved.
	-v0	Non-verbose mode, only overral result is printed.
	-v1	Default: Brief verbose mode, proccessed files are printed at one row.
	-v2	Complete verbose.
	-x	Folder and files exclude mask

	-versions	Analyze unique SRC files versions at DST."; return}

set offs 0
set flagx 0
foreach opt $argv {
	if {$flagx} {lappend sw(x) $opt; set flagx 0; incr offs; continue}
	switch -- $opt {
		-csv {set sw(csv) 1; incr offs}
		-v0 {set sw(v) 0; incr offs}
		-v1 {set sw(v) 1; incr offs}
		-v2 {set sw(v) 2; incr offs}
		-s {set sw(s) {}; incr offs}
		-versions {set sw(vers) 1; incr offs}
		-x {set flagx 1; incr offs}
		default break
	}
}
set src [lrange $argv $offs end-1]
set dst [join [split [lindex $argv end] \\] /]
##parsing

if {$sw(vers)} {
	set backups [glob -noc -types d -directory $dst *]
	array unset filesVers
	set preV [lindex $backups 0]

 #all first entries ARE unique
	foreach mask $src {
	  foreach  f [glob -tails -path $preV/ [join [split $mask \\] /]] {
		if {![info exists filesVers($f)] || [lsearch $filesVers($f) $preV]==-1} {
		  lappend filesVers($f) $preV}
	}}

 #foreach backup
  #list files
   #and compare them to previous backup
		
	foreach v [lrange $backups 1 end] {
		foreach mask $src {
		  foreach  f [glob -tails -path $v/ [join [split $mask \\] /]] {
			if {[glob -noc $preV/$f]=={} || [file mtime [lindex [glob $v/$f] 0]]>[file mtime [lindex [glob $preV/$f] 0]]} {
				if {![info exists filesVers($f)] || [lsearch $filesVers($f) $v]==-1} {
				  lappend filesVers($f) $v}
			}
		}}
		set preV $v
	}

	foreach f [array names filesVers] {
		puts \n$f
		foreach v $filesVers($f) {puts [lindex [glob $v/$f] 0]}
	}
	return
}

if {[catch {file mkdir $dst; set h [open $dst/___.___.___ w+]; close $h}]} {puts "Write Access error for \"$dst\""; return 1}
if {[catch {file link -hard $dst/___.___.___.___ $dst/___.___.___}]} {puts "Hardlinks cannot be established at \"$dst\"\nCheck if \"$dst\" is on NTFS drive"; return 2}
catch {file del $dst/___.___.___; file del $dst/___.___.___.___}

	#######
#recursion here
proc goToDu {from mask to last} {
#set from $srcDir
#set mask $srcMask
#set to $dst/$timeDst/$fixedSrc
	foreach f [glob -noc -tails -types f -directory $from $mask] {
		set flagx 0;  foreach x $::sw(x) {	if {[string match -nocase $x $f]} {set flagx 1; break}	};  if {$flagx} continue
		if {([glob -noc $last/$f]=={}) || ([file mtime $from/$f]!=[file mtime $last/$f])} {
			file copy -force $from/$f $to/$f
			incr ::fCopied
			incr ::fCopiedS [file size $from/$f]
			if {$::sw(v)==1} {puts -nonewline stderr "\x0d+$from/$f"}
			if {$::sw(v)==2} {puts stderr "+$from/$f"}
			if {$::sw(s)!={}} {puts $::sw(s) "+$from/$f"}
		} else {
			file link -hard $to/$f $last/$f
			incr ::fLinked
			if {$::sw(v)==1} {puts -nonewline stderr "\x0d=$from/$f"}
			if {$::sw(v)==2} {puts stderr "=$from/$f"}
			if {$::sw(s)!={}} {puts $::sw(s) "=$from/$f"}
		}
	}

	foreach d [glob -noc -tails -types d -directory $from *] {
		set flagx 0;  foreach x $::sw(x) {	if {[string match -nocase $x $d]} {set flagx 1; break}	};  if {$flagx} continue
		if {[regexp {[\*\?]} $mask]||[glob -noc -tails -types f -directory $from/$d $mask]!={}} {
			file mkdir $to/$d
		}
		goToDu $from/$d $mask $to/$d $last/$d
	}
}
#######

set bTime [clock seconds]

set allFCopied 0; set allFCopiedS 0; set allFLinked 0
set timeDst [clock format $bTime -format %y.%m.%dT%Hh.%Mm.%Ss]
set last [lindex [glob -noc -types d -directory $dst *] end]
if {$last=="$dst/$timeDst"} {puts stderr "Backing up more frequently than 1fps if suppressed"; exit}
file mkdir $dst/$timeDst
	
foreach s [join [split $src \\] /] {
	set srcDir [file dirname $s]
	set srcMask [file tail $s]
	if {[glob -noc -types d $srcDir/$srcMask]=="$srcDir/$srcMask"} {	#Ensure SRC has mask pattern if it is folder
		if {[string index $srcDir end]!="/"} {append srcDir "/"}
		append srcDir $srcMask
		set srcMask *
	}
	if {[glob $srcDir/$srcMask]=={}} {puts stderr "Pattern is blank: \"$s\", skipping."; continue}
	set fixedSrc [join [split [string trim [join [split $srcDir :/] { }]] { }] _]
	if {[file exists $dst/$timeDst/$fixedSrc]} {puts stderr "Uncomplete backup found, killing..."; file delete -force $dst/$timeDst/$fixedSrc}
	file mkdir $dst/$timeDst/$fixedSrc

	set fCopied 0; set fCopiedS 0; set fLinked 0
	puts stderr "\nDubing $srcDir/$srcMask"
	if {$sw(s)!={}} {
		set sw(s) [open $dst/$timeDst/$timeDst.txt a+]
		puts $sw(s) "\nDubing $srcDir/$srcMask"
	}
	goToDu $srcDir $srcMask $dst/$timeDst/$fixedSrc $last/$fixedSrc
	if {$sw(s)!={}} {
		puts $sw(s) "New files: $fCopied, [format %.1f [expr $fCopiedS/1024/1024]]MBytes"
		puts $sw(s) "Reused files: $fLinked"
		close $sw(s)
	}

	if {$sw(csv)} {puts "[clock format $bTime -format %Y-%m-%d],[clock format $bTime -format %H:%M:%S],$srcDir/$srcMask,$dst,$fCopied,$fCopiedS,$fLinked"; flush stdout}
	puts stderr "\nNew files: $fCopied, [format %.1f [expr $fCopiedS/1024/1024]]MBytes"
	puts stderr "Reused files: $fLinked"

	incr allFCopied $fCopied
	incr allFCopiedS $fCopiedS
	incr allFLinked $fLinked
}

if {$sw(s)!={}} {
	set f [open $dst/dublog.txt a+]
	puts $f "$timeDst\tReused:$allFLinked\tNew:$allFCopied,\t\t[format %.3f [expr $allFCopiedS/1024/1024]]MBytes"
	close $f
}
puts stderr "\nTotal files new: $allFCopied, [format %.1f [expr $allFCopiedS/1024/1024]]MBytes\n\
	Total files reused: $allFLinked"
