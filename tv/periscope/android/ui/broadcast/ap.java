package tv.periscope.android.ui.broadcast;

import tv.periscope.android.event.ApiEvent.Type;

/* compiled from: Twttr */
/* synthetic */ class ap {
    static final /* synthetic */ int[] a;

    static {
        a = new int[Type.values().length];
        try {
            a[Type.OnReplayViewedComplete.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[Type.OnEndReplayViewedComplete.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[Type.OnPingWatchingComplete.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
