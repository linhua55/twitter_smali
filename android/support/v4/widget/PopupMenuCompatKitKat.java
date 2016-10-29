package android.support.v4.widget;

import android.view.View.OnTouchListener;
import android.widget.PopupMenu;

/* compiled from: Twttr */
class PopupMenuCompatKitKat {
    PopupMenuCompatKitKat() {
    }

    public static OnTouchListener getDragToOpenListener(Object obj) {
        return ((PopupMenu) obj).getDragToOpenListener();
    }
}
