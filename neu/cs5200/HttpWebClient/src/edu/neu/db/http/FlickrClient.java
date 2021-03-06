package edu.neu.db.http;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import edu.neu.db.http.Rsp;
import edu.neu.db.http.Photo;

public class FlickrClient {
	public Rsp search(String term)
	{
		Rsp rsp = null;
		try
		{
			String method = "flickr.photos.search";
			String api_key = "5da2ddf6e55e6529b2c3211d124182ea";
			String user_id = "45172499@N00";
			//String secret = "5da0519825a0cd8e";
			term = term.replaceAll(" ", ",");
			String text = term;
			String tags = term;
			String urlStr = "https://api.flickr.com/services/rest?tags="+term+"&method="+method+"&api_key="+api_key;
			URL url = new URL(urlStr);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			//conn.setRequestProperty("Accept", "application/json");
			
			try
			{
				JAXBContext jax = JAXBContext.newInstance(Rsp.class);
				Unmarshaller unmarshaller = jax.createUnmarshaller();
				rsp = (Rsp) unmarshaller.unmarshal(conn.getInputStream());
			}
			catch (JAXBException e)
			{
				e.printStackTrace();
			}
			conn.disconnect();
		}
		catch (MalformedURLException e)
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return rsp;
	}
	public static void main(String[] args) {
		FlickrClient client = new FlickrClient();
		Rsp rsp = client.search("lego");
		System.out.println(rsp.stat);
		System.out.println(rsp.photos.page);
		System.out.println(rsp.photos.photo);
		List<Photo> photos = rsp.photos.photo;
		if(photos != null)
		{
			for(Photo photo:photos)
			{
				System.out.println(photo.title);
			}
		}
	}

}
