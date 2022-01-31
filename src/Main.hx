class Main {
	static function main() {
		testDevice(new TV());
	}

	static function testDevice(device:IDevice) {
		final remote:BaseRemote = new BaseRemote(device);
		remote.togglePower();
		device.printStatus();
		remote.volumeUp();
		remote.volumeUp();
		remote.channelUp();
		device.printStatus();
	}
}
