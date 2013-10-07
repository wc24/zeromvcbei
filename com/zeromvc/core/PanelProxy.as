package com.zeromvc.core {
	import com.zeromvc.events.ProxyEvent;
	[Event(name="showPanel",type="com.zeromvc.events.ProxyEvent")]
	[Event(name="hidePanel",type="com.zeromvc.events.ProxyEvent")]
	public class PanelProxy extends Proxy {
		protected var _using:Boolean;
		public function PanelProxy(proxyName:String = null) {
			super(proxyName);
		}
		public function get using():Boolean {
			return _using;
		}
		public function set using(value:Boolean):void {
			if (_using != value) {
				_using = value
				if (_using) {
					dispatchEvent(new ProxyEvent(ProxyEvent.SHOW_PANEL));
				} else {
					dispatchEvent(new ProxyEvent(ProxyEvent.HIDE_PANEL));
				}
			}
		}
	}
}