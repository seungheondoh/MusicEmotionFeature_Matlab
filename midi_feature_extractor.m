function features = midi_feature_extractor(midi)
    features = struct;
    key = keyname(kkkey(midi));
    features(1).keyname = key{1};
    features(1).keymode = keymode(midi);
end