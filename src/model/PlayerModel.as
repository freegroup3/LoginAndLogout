package model
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.media.SoundTransform;
	
	public class PlayerModel extends EventDispatcher
	{
		public var st:SoundTransform;
		
		public function PlayerModel(target:IEventDispatcher=null)
		{
			super(target);
			st = new SoundTransform;
		}
	}
}