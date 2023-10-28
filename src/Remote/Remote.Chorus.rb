forge = "C:\\Projects\\songs\\samples\\forge\\"
forge_a_muted = forge + "forge_a_muted.wav"
forge_a1 = forge + "forge_a1.wav"
forge_aa_muted = forge + "forge_aa_muted.wav"
forge_ab1 = forge + "forge_ab1.wav"
forge_as_muted = forge + "forge_as_muted.wav"
forge_b1 = forge + "forge_b1.wav"
forge_bb1 = forge + "forge_bb1.wav"
forge_c_muted = forge + "forge_c_muted.wav"
forge_c2 = forge + "forge_c2.wav"
forge_cs2 = forge + "forge_cs2.wav"
forge_d_muted = forge + "forge_d_muted.wav"
forge_d2 = forge + "forge_d2.wav"
forge_dd_muted = forge + "forge_dd_muted.wav"
forge_e_muted = forge + "forge_e_muted.wav"
forge_e1 = forge + "forge_e1.wav"
forge_e2 = forge + "forge_e2.wav"
forge_eb2 = forge + "forge_eb2.wav"
forge_ee_muted = forge + "forge_ee_muted.wav"
forge_f_muted = forge + "forge_f_muted.wav"
forge_f1 = forge + "forge_f1.wav"
forge_ff_muted = forge + "forge_ff_muted.wav"
forge_fs1 = forge + "forge_fs1.wav"
forge_g_muted = forge + "forge_g_muted.wav"
forge_g1 = forge + "forge_g1.wav"
forge_gg_muted = forge + "forge_gg_muted.wav"


##| rythm

live_loop :rythm do
  sample :drum_heavy_kick
  sample :drum_tom_mid_hard, amp: 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.125
end


##| solo

define :play_note do |p|
  play p, release: 0.25, amp: 0.5
end

define :play_forge4 do |s|
  sample s, finish: 0.03
end

define :play_forge8 do |s|
  sample s, finish: 0.02
end

define :play_forge1 do |s|
  sample s, finish: 0.12
end

define :chorus do |t|
  use_synth :tb303
  
  3.times do
    play_note :e3
    play_forge4 forge_e2
    sleep 0.25
    play_note :d3
    play_forge4 forge_d2
    sleep 0.25
    ##| --
    3.times do
      play_note :g3
      sample forge_g_muted
      ##| play_forge4 forge_g1
      sleep 0.25
    end
    2.times do
      play_note :g3
      sample forge_g_muted
      ##| play_forge8 forge_g1
      sleep 0.125
    end
    ##| --
    sleep 0.125
    
    play_note :g3
    sample forge_g_muted
    ##| play_forge8 forge_g1
    sleep 0.125
    
    play_note :g3
    sample forge_g_muted
    ##| play_forge4 forge_g1
    sleep 0.25
  end
  
  2.times do
    play_note :g3
    play_forge4 forge_g1
    sleep 0.25
  end
  
  play_note :fs3
  play_forge1 forge_fs1
  sleep 1
end


loop do
  chorus 1
end





