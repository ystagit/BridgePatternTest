class BaseRemote implements IRemote {
    
    private final device:IDevice;

    public function new(device:IDevice) {
        this.device = device;
    }

	public function togglePower() {
        if (device.isEnabled()) {
            device.disable();
        } else {
            device.enable();
        }
    }

	public function volumeUp() {
        trace("Pressed 'Voume Up'");
        device.setVolume(device.getVolume() + 10);
    }

	public function volumeDown() {
        trace("Pressed 'Voume Down'");
        device.setVolume(device.getVolume() - 10);
    }

	public function channelUp() {
        trace("Pressed 'Channel Up'");
        device.setChannel(device.getChannel() + 1);
    }

	public function channelDown() {
        trace("Pressed 'Channel Down'");
        device.setChannel(device.getChannel() - 1);
    }
}