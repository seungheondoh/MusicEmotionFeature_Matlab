function features = mp3_feature_extractor(mp3)
    features = struct;    
    features(1).name = mp3;
    clarity = mirpulseclarity(mp3);
    features(1).clarity = mirgetdata(clarity);
    features(1).tempo = gettempo(mp3);
    energy = mirlowenergy(mp3, 'ASR');
    features(1).energy = mirgetdata(energy);
end