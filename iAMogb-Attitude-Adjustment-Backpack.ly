\version "2.18.2"

\header {
  title = "Attitude Adjustment Backpack"
  composer = "iAMogb"
  tagline = ##f
  copyright = "v.1.20180216.1"
}

global = {
  \key c \major
  \time 12/8
  \tempo 4. = 100
}

flute = \relative c'' {
  \global
  %all breaks in first voice
  r2. c8 b a c b a |%m1
  r2. c8 b a c b a |%m2
    \break
  r1. |%m3
  fis'8 e dis c b a g fis e fis e dis |%m4
    \break
  r2. g8 fis e fis e dis |%m5   
  fis'8 e dis c b a g fis e fis e dis |%m6
    \break
  dis8 dis16 dis16 dis8 dis8 dis dis e8 e16 e16 e8 e8 e e |%m7
  dis8 dis16 dis16 dis8 dis8 dis dis e2. \startTrillSpan |%m8
    \break
  dis8 \stopTrillSpan dis16 dis16 dis8 dis8 dis dis e8 e16 e16 e8 e8 e e |%m9
  dis8 dis16 dis16 dis8 dis8 dis dis e8 e e r4. \bar "|." |%m10
    
  
  
  
}

bassoon = \relative c {
  \global
  dis8 f fis dis f fis r2. |%m1
  dis8 f fis dis f fis r2. |%m2
  fis'8 e dis c b a g fis e fis e dis |%m3
  r1. |%m4
  fis'8 e dis c b a r2. |%m5
  fis'8 e dis c b a g fis e fis e dis |%m6
  <dis ais'>8 <dis ais'>16 <dis ais'>16 <dis ais'>8 <dis ais'>8 <dis ais'> <dis ais'> 
      <e b'>8 <e b'>16 <e b'>16 <e b'>8 <e b'>8 <e b'> <e b'> |%m7
  <dis ais'>8 <dis ais'>16 <dis ais'>16 <dis ais'>8 <dis ais'>8 <dis ais'> <dis ais'> 
      <fis cis'>8 <fis cis'>16 <fis cis'>16 <fis cis'>8 <fis cis'>8 <fis cis'> <fis cis'> |%m8
  <dis ais'>8 <dis ais'>16 <dis ais'>16 <dis ais'>8 <dis ais'>8 <dis ais'> <dis ais'> 
      <e b'>8 <e b'>16 <e b'>16 <e b'>8 <e b'>8 <e b'> <e b'> |%m9
  <dis ais'>8 <dis ais'>16 <dis ais'>16 <dis ais'>8 <dis ais'>8 <dis ais'> <dis ais'> 
      <e b'>8 <e b'> <e b'> r4. |%m10
}

flutePart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "flute"
} \flute

bassoonPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "bassoon"
} { \clef bass \bassoon }

\score {
  <<
    \flutePart
    \bassoonPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
