function merge_t = all_feature(mp3_dir, midi_dir)
    mp3_list = py.os.listdir(mp3_dir);
    midi_list = py.os.listdir(midi_dir);
    N = length(mp3_list);
    for i = 1:N
        mp3_fname = mp3_list(i);
        mp3_fname = mp3_fname{1};
        mp3_fpath = py.os.path.join(mp3_dir, mp3_fname);
        mp3 = char(mp3_fpath);
        mp3_features = mp3_feature_extractor(mp3);
        
        midi_fname = midi_list(i);
        midi_fname = midi_fname{1};
        midi_fpath = py.os.path.join(midi_dir, midi_fname);
        midi = char(midi_fpath);
        midi_features = midi_feature_extractor(midi);
        
        mp3_table = struct2table(mp3_features);
        midi_table = struct2table(midi_features);
        % Concatonate tables
        merge_t = [ mp3_table ,midi_table ];
        save_path = char(mp3_fname);
        save_fname = strrep(save_path,'.mp3','.csv');
        writetable(merge_t,['matlab_feature/' save_fname],'Delimiter',',');
        fclose('all');
    end
end