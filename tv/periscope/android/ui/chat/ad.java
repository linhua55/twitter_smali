package tv.periscope.android.ui.chat;

import tv.periscope.model.StreamType;

/* compiled from: Twttr */
/* synthetic */ class ad {
    static final /* synthetic */ int[] a;

    static {
        a = new int[StreamType.values().length];
        try {
            a[StreamType.LowLatency.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[StreamType.TooFull.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[StreamType.OnlyFriends.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[StreamType.Unknown.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
