package control
{
	import flash.media.SoundTransform;
	import model.PlayerModel;
	import servce.FMSservice;

	public class PlayerControl
	{
		private var theService:FMSservice;
		private var thePlayerModel:PlayerModel;
		public var st:SoundTransform;
		
		public function PlayerControl( _theService:FMSservice, _theModel:PlayerModel )
		{
			theService = _theService;
			thePlayerModel = _theModel;
			st = new SoundTransform;
		}
		
		public function closeCameraStream():void
		{
			theService.ns_Publisher.attachCamera( null );
			theService.streamVideo.attachNetStream( null );
			theService.container.removeChild( theService.streamVideo );
		}
		
		public function controlSoundVolume( value:int ):void
		{
			st.volume = value;
			theService.ns_Receiver.soundTransform = st;
		}
	}
}