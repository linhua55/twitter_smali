package tv.periscope.android.ui.broadcast;

import tv.periscope.android.event.ApiEvent.Type;
import tv.periscope.android.player.PlayMode;

/* compiled from: Twttr */
/* synthetic */ class aw {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[Type.values().length];
        try {
            b[Type.OnAccessVideoComplete.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[Type.OnAccessChatComplete.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[Type.OnStartWatchingComplete.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        a = new int[PlayMode.values().length];
        try {
            a[PlayMode.e.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[PlayMode.c.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[PlayMode.d.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[PlayMode.b.ordinal()] = 4;
        } catch (NoSuchFieldError e7) {
        }
    }
}
