package com.musicworld.musicdao;

import java.util.ArrayList;
import java.util.List;

import com.musicworld.musicmodel.MusicModel;

public class MusicDao implements IMusicDao{

	public List<MusicModel> getAllAlbums() {
		// TODO Auto-generated method stub
		
		
		List<MusicModel> list = new ArrayList<MusicModel>();
		list.add(new MusicModel("101","TRACK 1", "ARTISTS 1", "MOVIE 1", "MUSIC 1", "ACTORS 1", "100", "POP"));
		list.add(new MusicModel("102","TRACK 2", "ARTISTS 2", "MOVIE 2", "MUSIC 2", "ACTORS 2", "150", "POP"));
		list.add(new MusicModel("103","TRACK 3", "ARTISTS 3", "MOVIE 3", "MUSIC 3", "ACTORS 3", "200", "POP"));
		return list;
		
		
	}

 
}
