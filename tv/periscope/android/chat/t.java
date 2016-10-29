package tv.periscope.android.chat;

import tv.periscope.model.chat.MessageType;

/* compiled from: Twttr */
/* synthetic */ class t {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MessageType.values().length];
        try {
            a[MessageType.BroadcasterBlockedViewer.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MessageType.SharedOnTwitter.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[MessageType.InviteFollowers.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MessageType.Join.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[MessageType.Chat.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[MessageType.Heart.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[MessageType.Unknown.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
    }
}
