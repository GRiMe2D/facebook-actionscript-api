/**
 * Defines avaliable metrics for admin.getMetrics Command
 * (As described in http://wiki.developers.facebook.com/index.php/Admin.getMetrics, Feb 3 2009); 
 * 
 */
package com.facebook.data.admin {
	
	/**
 	 * Enumeration class for possible values of the <code>metrics</code> parameter of the admin.getMetrics command.
 	 * The constants in this class represent the various metrics that can be queried by the
 	 * admin.getMetrics command. The <code>metrics</code> parameter is an Array, so more than one constant
 	 * from this class may be included in a single call to admin.getMetrics.
 	 * 
 	 * @see com.facebook.commands.admin.GetMetrics
 	 * @see http://wiki.developers.facebook.com/index.php/Admin.getMetrics
 	 */
	[Bindable]
	public class GetMetricsValues {
		
		//Usage Metrics
		/**
		 *  The number of active users.
		 * 
		 */
		public static const ACTIVE_USERS:String = 'active_users';
		
		/**
		 * The number of API calls made by your application.
		 * 
		 */
		public static const API_CALLS:String = 'api_calls';
		
		/**
		 * The number of users on whose behalf your application made API calls.
		 * 
		 */
		public static const UNIQUE_API_CALLS:String = 'unique_api_calls';
		
		/**
		 * The number of canvas page views.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS:String = 'canvas_page_views';
		
		/**
		 * The number of users who viewed your application's canvas page.
		 * 
		 */
		public static const UNIQUE_CANVAS_PAGE_VIEWS:String = 'unique_canvas_page_views';
		
		/**
		 * The average time to fulfill an HTTP request to your application's canvas page.
		 * 
		 */
		public static const CANVAS_HTTP_REQUEST_TIME_AVG:String = 'canvas_http_request_time_avg';
		
		/**
		 * The average time to render FBML on your application's canvas page.
		 * 
		 */
		public static const CANVAS_FBML_RENDER_TIME_AVG:String = 'canvas_fbml_render_time_avg';
		
		/**
		 * The number of users who blocked your application. 1-day only.
		 * 
		 */
		public static const UNIQUE_BLOCKS:String = 'unique_blocks';
		
		/**
		 * The number of users who unblocked your application. 1-day only.
		 * 
		 */
		public static const UNIQUE_UNBLOCKS:String = 'unique_unblocks'; 
		
		
		//HTTP Request Metrics 
		//The following metrics are only available for the 1-day period.
		/**
		 * The number of canvas page views that timed out.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_0:String = 'canvas_page_views_http_code_0';
		
		/**
		 * The number of canvas page views that returned HTTP code 100'; //Continue.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_100:String = 'canvas_page_views_http_code_100';
		
		/**
		 * The number of canvas page views that returned HTTP code 200'; //OK.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_200:String = 'canvas_page_views_http_code_200';
		
		/**
		 * The number of canvas page views that returned HTTP code 200'; //OK'; //and no data.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_200ND:String = 'canvas_page_views_http_code_200ND';
		
		/**
		 * The number of canvas page views that returned HTTP code 301'; //Moved Permanently.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_301:String = 'canvas_page_views_http_code_301';
		
		/**
		 * The number of canvas page views that returned HTTP code 302'; //Found.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_302:String = 'canvas_page_views_http_code_302';
		
		/**
		 * The number of canvas page views that returned HTTP code 303'; //See Other.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_303:String = 'canvas_page_views_http_code_303';
		
		/**
		 * The number of canvas page views that returned HTTP code 400'; //Bad Request.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_400:String = 'canvas_page_views_http_code_400';
		
		/**
		 * The number of canvas page views that returned HTTP code 401'; //Unauthorized.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_401:String = 'canvas_page_views_http_code_401';
		
		/**
		 * The number of canvas page views that returned HTTP code 403'; //Forbidden.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_403:String = 'canvas_page_views_http_code_403';
		
		/**
		 * The number of canvas page views that returned HTTP code 404'; //Not Found.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_404:String = 'canvas_page_views_http_code_404';
		
		/**
		 * The number of canvas page views that returned HTTP code 405'; //Method Not Allowed.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_405:String = 'canvas_page_views_http_code_405';
		
		/**
		 * The number of canvas page views that returned HTTP code 413'; //Request Entity Too Large.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_413:String = 'canvas_page_views_http_code_413';
		
		/**
		 * The number of canvas page views that returned HTTP code 422'; //Unprocessable Entity.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_422:String = 'canvas_page_views_http_code_422';
		
		/**
		 * The number of canvas page views that returned HTTP code 500'; //Internal Server Error.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_500:String = 'canvas_page_views_http_code_500';
		
		/**
		 * The number of canvas page views that returned HTTP code 502'; //Bad Gateway.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_502:String = 'canvas_page_views_http_code_502';
		
		/**
		 * The number of canvas page views that returned HTTP code 503'; //Service Unavailable.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_503:String = 'canvas_page_views_http_code_503';
		
		/**
		 * The number of canvas page views that returned HTTP code 505'; //HTTP Version Not Supported.
		 * 
		 */
		public static const CANVAS_PAGE_VIEWS_HTTP_CODE_505:String = 'canvas_page_views_http_code_505';
		
		
		/**
		 * Special value that contains all of the basic Usage values defined in this class.
		 * 
		 */
		public static const ALL_USEAGE_VALUES:Array = [ACTIVE_USERS, API_CALLS, UNIQUE_API_CALLS, CANVAS_PAGE_VIEWS, UNIQUE_CANVAS_PAGE_VIEWS, CANVAS_HTTP_REQUEST_TIME_AVG, CANVAS_FBML_RENDER_TIME_AVG, UNIQUE_BLOCKS, UNIQUE_UNBLOCKS];
		
		/**
		 * Special value that contains all the HTTP metric values defined in this class.
		 * 
		 */
		public static const ALL_HTTP_METRICS:Array = [CANVAS_PAGE_VIEWS_HTTP_CODE_0, CANVAS_PAGE_VIEWS_HTTP_CODE_100, CANVAS_PAGE_VIEWS_HTTP_CODE_200, CANVAS_PAGE_VIEWS_HTTP_CODE_200ND, CANVAS_PAGE_VIEWS_HTTP_CODE_301, CANVAS_PAGE_VIEWS_HTTP_CODE_302, CANVAS_PAGE_VIEWS_HTTP_CODE_303, CANVAS_PAGE_VIEWS_HTTP_CODE_400, CANVAS_PAGE_VIEWS_HTTP_CODE_401, CANVAS_PAGE_VIEWS_HTTP_CODE_403, CANVAS_PAGE_VIEWS_HTTP_CODE_404, CANVAS_PAGE_VIEWS_HTTP_CODE_405, CANVAS_PAGE_VIEWS_HTTP_CODE_413, CANVAS_PAGE_VIEWS_HTTP_CODE_422, CANVAS_PAGE_VIEWS_HTTP_CODE_500, CANVAS_PAGE_VIEWS_HTTP_CODE_502, CANVAS_PAGE_VIEWS_HTTP_CODE_503, CANVAS_PAGE_VIEWS_HTTP_CODE_505];
		
		/**
		 * Special value that contains all the values in this class.
		 * 
		 */
		public static const ALL_VALUES:Array = ALL_USEAGE_VALUES.slice().concat(ALL_HTTP_METRICS.slice());

	}
}		