package control
{
	import model.StaffModel;

	public class LoginWindowControl
	{
		private var staffModel:StaffModel;
		
		public function LoginWindowControl( _staffModel:StaffModel )
		{
			staffModel = _staffModel;
		}
		
		public function pressConfirmButton():void
		{
			staffModel.compareIdAndPassword();
		}
		
	}
}