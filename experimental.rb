class Tabulature

  # Implement me :)
  #

  def to_chord
  end

  def to_pattern
  end

end

# Some conventional
# defaults
#

tick  = 1.0
half  = 0.5*tick
quart = 0.25*tick
eigth = 0.125*tick

def dotted(duration)
  duration + 0.5*duration
end

GUITAR_STRINGS = { # Default tuning
  "e" => 10, # E4
  "h" => 59, # B3
  "g" => 55, # G3
  "d" => 50, # D3
  "A" => 45, # A2
  "E" => 40  # E2
}

use_synth :fm

# Some random examples
# of tabulature input for guitar
# and how Sonic Pi output _could_ look
# like

em = <<-EOTAB
e|--
h|--
g|--
d|-2
A|-2
E|-0
EOTAB

# tab = Tabulature.new(em)
# tab.to_chord # Chord#12312312 if possible

pattern = <<-EOTAB
e|------
h|------
g|------
d|-----2
A|---2--
E|-0----
EOTAB

# tab = Tabulature.new(pattern)
# tab.to_chord   # nil
# tab.to_pattern # [40, 47, 52]

play 55
