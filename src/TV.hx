class TV implements IDevice {

    private var on:Bool = false;
    private var volume:Int = 40;
    private var channel:Int = 1;

    public function new() { }

    public function isEnabled():Bool {
		return on;
	}

	public function enable() {
        on = true;
    }

	public function disable() {
        on = false;
    }

	public function getVolume():Int {
		return volume;
	}

	public function setVolume(volume:Int) {
        if (volume < 0) {
            this.volume = 0;
        } else if (volume > 100) {
            this.volume = 100;
        } else {
            this.volume = volume;
        }
    }

	public function getChannel():Int {
		return channel;
	}

	public function setChannel(channel:Int) {
        this.channel = channel;
    }

	public function printStatus() {
        trace("============================");
        trace("Device: TV");
        trace('Power state: ${on ? "ON" : "OFF"}');
        trace('Channel: ${channel}');
        trace('Volume: ${volume}%');
        trace("============================");
    }
}