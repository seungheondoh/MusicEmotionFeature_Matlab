function temp = mp3_feature_extractor(mp3)
    features = struct;    
    features(1).name = mp3;
    temp = mirhcdf(mp3);
    temp = mirgetdata(temp);
%     clarity = mirpulseclarity(mp3);
%     features(1).clarity = mirgetdata(clarity);
%     energy = mirlowenergy(mp3, 'ASR');
%     features(1).energy = mirgetdata(energy);
end