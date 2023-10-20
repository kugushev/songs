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

live_loop :rythm do
    sample :drum_heavy_kick
    sleep 0.4
end

sleep 0.2

##| time: 3.2
live_loop :tabla do
    6.times do
        sample :tabla_tas1
        sleep 0.4
    end

    4.times do
        sample :tabla_tas3
        sleep 0.1
    end

    sleep 0.4
end

loop do

    4.times do
        sample forge_d_muted
        sleep 0.2
    end

    sleep 0.8

    4.times do
        sample :perc_till, start: 0.2, release: 0, amp: 2
        sleep 0.2
    end


    sleep 0.8

end
