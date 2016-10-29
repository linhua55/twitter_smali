package tv.periscope.android.ui.broadcast;

import tv.periscope.android.event.ApiEvent.Type;
import tv.periscope.android.event.CacheEvent;
import tv.periscope.android.player.PlayMode;

/* compiled from: Twttr */
/* synthetic */ class aj {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;
    static final /* synthetic */ int[] c;

    static {
        c = new int[CacheEvent.values().length];
        try {
            c[CacheEvent.BroadcastsUpdated.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        b = new int[Type.values().length];
        try {
            b[Type.OnGetBroadcastsComplete.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        a = new int[PlayMode.values().length];
        try {
            a[PlayMode.b.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[PlayMode.d.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[PlayMode.c.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[PlayMode.e.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
    }
}
