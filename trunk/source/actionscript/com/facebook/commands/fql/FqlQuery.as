/**
 * http://wiki.developers.facebook.com/index.php/Fql.query
 * Feb 10/09
 */ 
package com.facebook.commands.fql {
	
	import com.facebook.net.FacebookCall;
	import com.facebook.facebook_internal;

	use namespace facebook_internal;

	/**
	 * The FqlQuery class represents the public  
      Facebook API known as Fql.query.
	 * @see http://wiki.developers.facebook.com/index.php/Fql.query
	 */
	public class FqlQuery extends FacebookCall {

		
		public static const METHOD_NAME:String = 'fql.query';
		public static const SCHEMA:Array = ['query'];
		
		public var query:String;
		
		public function FqlQuery(query:String) {
			super(METHOD_NAME);
			
			this.query = query;
		}
		
		override facebook_internal function initialize():void {
			applySchema(SCHEMA, this.query);
			super.facebook_internal::initialize();
		}
	}
}