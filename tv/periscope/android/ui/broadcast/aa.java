package tv.periscope.android.ui.broadcast;

import tv.periscope.android.chat.ChatRoomEvent;
import tv.periscope.android.player.PlayMode;

/* compiled from: Twttr */
/* synthetic */ class aa {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[PlayMode.values().length];
        try {
            b[PlayMode.b.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[PlayMode.d.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[PlayMode.c.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            b[PlayMode.e.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        a = new int[ChatRoomEvent.values().length];
        try {
            a[ChatRoomEvent.JOINED.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[ChatRoomEvent.PARTED.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[ChatRoomEvent.REJOINED.ordinal()] = 3;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[ChatRoomEvent.ERROR.ordinal()] = 4;
        } catch (NoSuchFieldError e8) {
        }
    }
}
