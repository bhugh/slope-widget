using Toybox.WatchUi;

class InputDelegate extends WatchUi.BehaviorDelegate {

    var callback;

    function initialize(c) {
        BehaviorDelegate.initialize();
        callback = c;
    }

    function onKey(keyEvent) {
        if(keyEvent.getKey() == WatchUi.KEY_DOWN) {
            callback.setPause();
        }
    }



    /*public function onMenu() as Boolean {
        WatchUi.pushView(new $.Rez.settings, new $.InputDelegate(), WatchUi.SLIDE_UP);
        return true;
    } */


}