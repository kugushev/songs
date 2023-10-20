live_loop :rythm do
    sample :drum_heavy_kick
    sleep 0.4
end

sleep 0.2

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


