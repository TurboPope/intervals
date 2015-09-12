require 'unimidi'

# output = UniMIDI::Output.gets
# output.open
output = UniMIDI::Output.open(:first)

notes = [36, 40, 43] # C E G
octaves = 5
duration = 0.1

(0..((octaves-1)*12)).step(12) do |oct|

  notes.each do |note|

    output.puts(0x90, note + oct, 100) # note on
    sleep(duration) # wait
    output.puts(0x80, note + oct, 100) # note off

  end

end
