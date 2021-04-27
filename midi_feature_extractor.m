function features = midi_feature_extractor(midi)
    features = struct;
    nmat = readmidi(midi);
    key = keyname(kkkey(nmat));
    features(1).name = midi;
    features(1).keyname = key{1};
    features(1).tempo = gettempo(nmat);
    features(1).keymode = keymode(nmat);
    features(1).beatNoteDensity = notedensity(nmat, 'beat');
    features(1).secNoteDensity = notedensity(nmat, 'sec');
end