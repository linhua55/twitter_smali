package tv.periscope.android.ui.chat;

import tv.periscope.model.chat.MessageType;

/* compiled from: Twttr */
/* synthetic */ class af {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MessageType.values().length];
        try {
            a[MessageType.SharedOnTwitter.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MessageType.InviteFollowers.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[MessageType.Join.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MessageType.Chat.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[MessageType.Heart.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[MessageType.Screenshot.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[MessageType.BroadcastEnded.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[MessageType.BroadcasterBlockedViewer.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        try {
            a[MessageType.ViewerBlock.ordinal()] = 9;
        } catch (NoSuchFieldError e9) {
        }
    }
}
