forge_d_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_d_muted.wav"

voice = "C:\\Projects\\music\\Release\\voice_samples\\FullV2.wav"


define :riff_sync do |t, s|
  t.times do
    use_synth :chiplead
    use_random_seed 42
    notes = (scale s, :major_pentatonic).shuffle
    16.times do
      note = notes.tick
      play note, release: 0.1, amp: 0.5
      play note - 12, release: 0.1, amp: 0.25
      sleep 0.1
    end
  end
end

use_synth :chipbass
play :c4, release: 0.5, amp: 0.5
sleep 0.4
play :e4, release: 0.5, amp: 0.5
sleep 0.4
play :g4, release: 0.5, amp: 0.5
sleep 0.4
play :c5, release: 0.5, amp: 0.5
sleep 0.4

sample voice, amp:10

sleep 1.4


live_loop :rythm_main do
  sample :drum_bass_soft
  sample :drum_heavy_kick
  sleep 0.2
  sample :drum_snare_soft
  sleep 0.2
end

##| sleep 1.6
##| first
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3

##| second
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3

##| Refrain

define :herak do |t, add_cowbell|
  sample forge_d_muted
  sample :drum_cymbal_closed
  if add_cowbell
    sample :drum_cowbell, amp: 0.3
  end
  
  sleep t
end

define :herak_loop do |t, add_cowbell|
  t.times do
    herak 0.2, add_cowbell
    3.times do
      herak 0.1, add_cowbell
      herak 0.1, add_cowbell
      herak 0.2, add_cowbell
    end
  end
end

sleep 1.2
sleep 1.6
use_synth :chiplead
play :c4,release: 2, amp: 0.5
play :g3,release: 2, amp: 0.5
play :e3,release: 2, amp: 0.5

sleep 1.6
use_synth :chiplead
play :g4,release: 2, amp: 0.5
play :e4,release: 2, amp: 0.5
play :c4,release: 2, amp: 0.5
sleep 1.6
use_synth :chiplead
play :e5,release: 2, amp: 0.5
play :c5,release: 2, amp: 0.5
play :g4,release: 2, amp: 0.5
sleep 1.6

herak_loop 9, false

herak_loop 9, true

play :g4, release: 0.5, amp: 0.5
sleep 0.4
play :c5, release: 0.5, amp: 0.5
sleep 0.4

##| first
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3

##| second
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3
sleep 1.6
riff_sync 1, :e4
sleep 1.6
riff_sync 1, :e3

sleep 1.2
sleep 1.6
use_synth :chiplead
play :c4,release: 2, amp: 0.5
play :g3,release: 2, amp: 0.5
play :e3,release: 2, amp: 0.5

sleep 1.6
use_synth :chiplead
play :g4,release: 2, amp: 0.5
play :e4,release: 2, amp: 0.5
play :c4,release: 2, amp: 0.5
sleep 1.6
use_synth :chiplead
play :e5,release: 2, amp: 0.5
play :c5,release: 2, amp: 0.5
play :g4,release: 2, amp: 0.5
sleep 1.6

herak_loop 9, false

herak_loop 9, true

sleep 0.8
play :c5, release: 0.5, amp: 0.5
sleep 0.4
play :g4, release: 0.5, amp: 0.5
sleep 0.4
play :e4, release: 0.5, amp: 0.5
sleep 0.4
play :c4, release: 0.5, amp: 0.5
sleep 0.4

sleep 6.4

herak_loop 9, false

herak_loop 9, true

herak_loop 10, true



