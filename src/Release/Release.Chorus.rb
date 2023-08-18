forge_a_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_a_muted.wav"
forge_a1 = "C:\\Projects\\forks\\Forge\\samples\\forge_a1.wav"
forge_aa_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_aa_muted.wav"
forge_ab1 = "C:\\Projects\\forks\\Forge\\samples\\forge_ab1.wav"
forge_as_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_as_muted.wav"
forge_b1 = "C:\\Projects\\forks\\Forge\\samples\\forge_b1.wav"
forge_bb1 = "C:\\Projects\\forks\\Forge\\samples\\forge_bb1.wav"
forge_c_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_c_muted.wav"
forge_c2 = "C:\\Projects\\forks\\Forge\\samples\\forge_c2.wav"
forge_cs2 = "C:\\Projects\\forks\\Forge\\samples\\forge_cs2.wav"
forge_d_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_d_muted.wav"
forge_d2 = "C:\\Projects\\forks\\Forge\\samples\\forge_d2.wav"
forge_dd_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_dd_muted.wav"
forge_e_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_e_muted.wav"
forge_e1 = "C:\\Projects\\forks\\Forge\\samples\\forge_e1.wav"
forge_e2 = "C:\\Projects\\forks\\Forge\\samples\\forge_e2.wav"
forge_eb2 = "C:\\Projects\\forks\\Forge\\samples\\forge_eb2.wav"
forge_ee_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_ee_muted.wav"
forge_f_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_f_muted.wav"
forge_f1 = "C:\\Projects\\forks\\Forge\\samples\\forge_f1.wav"
forge_ff_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_ff_muted.wav"
forge_fs1 = "C:\\Projects\\forks\\Forge\\samples\\forge_fs1.wav"
forge_g_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_g_muted.wav"
forge_g1 = "C:\\Projects\\forks\\Forge\\samples\\forge_g1.wav"
forge_gg_muted = "C:\\Projects\\forks\\Forge\\samples\\forge_gg_muted.wav"

voice = "C:\\Projects\\music\\Release\\voice_samples\\Refrain.wav"

##| define :herak do |t|
##|   sample forge_d_muted
##|   sample :drum_cymbal_closed
##|   sleep t
##| end

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

sample voice, amp:10

live_loop :rythm_main do
  sample :drum_bass_soft
  sample :drum_heavy_kick
  sleep 0.2
  sample :drum_snare_soft
  sleep 0.2
end

sleep 6.4

herak_loop 9, false

herak_loop 6, true

