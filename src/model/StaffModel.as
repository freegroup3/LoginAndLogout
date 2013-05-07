package model
{
	import event.LoginAndPlayerEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class StaffModel extends EventDispatcher
	{
		public function StaffModel()
		{
		}
		public function compareIdAndPassword():void
		{
			dispatchEvent(new Event( LoginAndPlayerEvent.LOGIN_SUCCESS ));
//			dispatchEvent(new Event( LoginAndPlayerEvent.LOGIN_FAILED ));
		}
	}
}