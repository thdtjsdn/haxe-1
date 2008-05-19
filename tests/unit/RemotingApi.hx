package unit;

class RemotingApi {

	var sub : RemotingApi;

	public function new() {
		sub = this;
	}

	public function add(x : Int,y : Int) {
		return x + y;
	}

	public function id( str : String ) {
		return str;
	}

	public function arr( a : Array<String> ) {
		return a.join("#");
	}

	public function exc( v : Dynamic ) {
		if( v != null )
			throw v;
	}

	public static function context() {
		var ctx = new haxe.remoting.Context();
		ctx.addObject("api",new RemotingApi());
		ctx.addObject("apirec",new RemotingApi(),true);
		return ctx;
	}

}
