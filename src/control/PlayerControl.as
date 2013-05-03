package control
{
	import model.PlayerModel;
	import servce.FMSservice;

	public class PlayerControl
	{
		private var theService:FMSservice;
		private var thePlayerModel:PlayerModel;
		
		public function PlayerControl( _theService:FMSservice, _theModel:PlayerModel )
		{
			theService = _theService;
			thePlayerModel = _theModel;
		}
		public function closeCameraStream():void
		{
			theService.ns_Publisher.attachCamera( null );
			theService.streamVideo.attachNetStream( null );
			theService.container.removeChild( theService.streamVideo );
		}
		public function controlSoundVolume( value:int ):void
		{
			trace("Slider 傳出的 Value", value);
			thePlayerModel.st.volume = value;
			theService.ns_Receiver.soundTransform = thePlayerModel.st;
		}
	}
}