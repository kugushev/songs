# Baby Shark

define :play_note do |p|
  play p, amp: 0.5
end


use_synth :piano

3.times do
  play_note :e3
  sleep 0.25
  play_note :d3
  sleep 0.25
  ##| --
  3.times do
    play_note :g3
    sleep 0.25
  end
  2.times do
    play_note :g3
    sleep 0.125
  end
  ##| --
  sleep 0.125
  play_note :g3
  sleep 0.125
  play_note :g3
  sleep 0.25
end

2.times do
  play_note :g3
  sleep 0.25
end

play_note :fs3
sleep 1

