package com.musicworld.musicmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
 

@SuppressWarnings("deprecation")
@Entity

public class MusicModel {

	@Id
	@Column(name="id")
	String id;
	
	@Column(name="track")
	String track;
	
	@Column(name="artists")
	String artists;
	
	@Column(name="movie")
	String movie;
	
	@Column(name="music")
	String music;
	
	@Column(name="actors")
	String actors;
	
	@Column(name="price")
	String price;
	
	@Column(name="catg")
	String catg;
	
	public MusicModel() {
		super();
	}

	public MusicModel(String id, String track, String artists, String movie, String music, String actors, String price,
			String catg) {
		super();
		this.id = id;
		this.track = track;
		this.artists = artists;
		this.movie = movie;
		this.music = music;
		this.actors = actors;
		this.price = price;
		this.catg = catg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTrack() {
		return track;
	}

	public void setTrack(String track) {
		this.track = track;
	}

	public String getArtists() {
		return artists;
	}

	public void setArtists(String artists) {
		this.artists = artists;
	}

	public String getMovie() {
		return movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCatg() {
		return catg;
	}

	public void setCatg(String catg) {
		this.catg = catg;
	}

	 
	
	
}
