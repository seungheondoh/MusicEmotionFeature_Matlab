function midi_table = all_midi(midi_dir)
    midi_list = py.os.listdir(midi_dir);
    N = length(midi_list);
    for i = 1:N
        midi_fname = midi_list(i);
        midi_fname = midi_fname{1};
        midi_fpath = py.os.path.join(midi_dir, midi_fname);
        midi = char(midi_fpath);
        midi_features = midi_feature_extractor(midi);
       
        midi_table = struct2table(midi_features);
        save_path = char(midi_fname);
        save_fname = strrep(save_path,'.mid','.csv');
        writetable(midi_table,['midi_feature/PPE/' save_fname],'Delimiter',',');
        fclose('all');
    end
end