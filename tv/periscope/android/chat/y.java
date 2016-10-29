package tv.periscope.android.chat;

import tv.periscope.model.chat.MessageType;

/* compiled from: Twttr */
/* synthetic */ class y {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MessageType.values().length];
        try {
            a[MessageType.Timestamp.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MessageType.InviteFollowers.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[MessageType.BroadcasterUploadedReplay.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MessageType.BroadcastEnded.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[MessageType.Heart.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[MessageType.Join.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[MessageType.Chat.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
    }
}
