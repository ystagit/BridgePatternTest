interface IDevice {
    
    function isEnabled():Bool;

    function enable():Void;

    function disable():Void;

    function getVolume():Int;

    function setVolume(volume:Int):Void;

    function getChannel():Int;

    function setChannel(channel:Int):Void;

    function printStatus():Void;

}