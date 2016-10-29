package android.support.v4.widget;

import android.widget.OverScroller;

/* compiled from: Twttr */
class ScrollerCompatIcs {
    ScrollerCompatIcs() {
    }

    public static float getCurrVelocity(Object obj) {
        return ((OverScroller) obj).getCurrVelocity();
    }
}
