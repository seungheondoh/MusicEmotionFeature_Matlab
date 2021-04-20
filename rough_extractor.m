function rough = rough_extractor(mp3_dir)
    mp3_list = py.os.listdir(mp3_dir);
    N = length(mp3_list);
    for i = 1:N
        mp3_fname = mp3_list(i);
        mp3_fname = mp3_fname{1};
        mp3_fpath = py.os.path.join(mp3_dir, mp3_fname);
        mp3 = char(mp3_fpath);
        rough = mirgetdata(mirroughness(mp3));
        save_path = char(mp3_fname);
        save_fname = strrep(save_path,'.mp3','.csv');
        writematrix(rough,['rough_feature/' save_fname]);
        fclose('all');
    end
end