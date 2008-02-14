/*
Copyright (c) 2007 Terralever

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
*/

/**
 *  Delegates the call to facebook.photo.getAlbums
 * 
 * @author Jason Crist 
 * @author Chris Hill
 */
package com.terralever.facebook.delegates.photos
{
	import com.terralever.facebook.Facebook;
	import com.terralever.facebook.FacebookCall;
	import flash.events.Event;
	import mx.logging.Log;
	import com.terralever.facebook.delegates.FacebookDelegate;
	import com.terralever.facebook.data.photos.FacebookAlbum;
	import com.terralever.facebook.data.photos.FacebookPhoto;

	public class GetAlbums_delegate extends FacebookDelegate
	{
		// VARIABLES //////////
		
		//results
		
		public var albums:Array;
		
		private var doGetCovers:Boolean;
		private var doGetImages:Boolean;
		
		// CONSTRUCTION //////////
		
		public function GetAlbums_delegate(fBook:Facebook, uid:String, doGetCovers:Boolean = false, doGetImages:Boolean = false)
		{
			super(fBook);
			Log.getLogger("terralever.facebook").debug("getting all albums for user: " + uid);
			
			this.doGetCovers = doGetCovers;
			this.doGetImages = doGetImages;
			
			var fbCall:FacebookCall = new FacebookCall(fBook);
			fbCall.addEventListener(Event.COMPLETE, result);
			fbCall.setRequestArgument("uid", uid);
			fbCall.post("facebook.photos.getAlbums");
		}
		
		override protected function result(event:Event):void
		{
			var fbCall:FacebookCall = event.target as FacebookCall;

			default xml namespace = fBook.FACEBOOK_NAMESPACE;
			
			albums = [];
			
			var xAlbums:XMLList = fbCall.getResponse()..album;
			for each(var xAlbum:XML in xAlbums)
			{
				var album:FacebookAlbum = new FacebookAlbum(xAlbum);
				albums.push(album);
			} 
			
			//first we get the covers then the images
			if(doGetCovers)
				this.getCovers();

			else if(doGetImages)
				this.getImages();

			else
				this.onComplete();
		}
		
		private function getCovers():void
		{
			var cover_pids:Array = new Array();
			for each(var album:FacebookAlbum in albums)
			{
				cover_pids.push(album.cover_pid);
			}
			
			fBook.photos_get(undefined, undefined, cover_pids, onGotCovers );
		}
		
		private function onGotCovers(event:Event):void
		{
			var coverPhotos:Array = event.target.photos;
			
			for each(var photo:FacebookPhoto in coverPhotos)
			{
				for each(var album:FacebookAlbum in albums)
				{
					if(album.cover_pid == photo.pid)
					{
						album.cover = photo;
						break;
					}
				}
			}
			
			if(doGetImages)
				this.getImages();

			else
				this.onComplete();
		
		}
		
		private function getImages():void
		{
			for each(var album:FacebookAlbum in albums)
			{
				if(!album.populated)
				{
					album.addEventListener("populationComplete", onAlbumPopulationComplete);
				}
			}
		}
		
		private function onAlbumPopulationComplete(event:Event):void
		{
			var eventAlbum:FacebookAlbum = event.target as FacebookAlbum;
			eventAlbum.removeEventListener("populationComplete", onAlbumPopulationComplete);

			//check all the albums to see if they're populated
			for each(var album:FacebookAlbum in albums)
			{
				if(!album.populated)
				{
					return;
				}
			}
			this.onComplete();
		}
	}
}