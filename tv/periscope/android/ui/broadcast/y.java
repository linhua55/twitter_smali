package tv.periscope.android.ui.broadcast;

import tv.periscope.android.ui.broadcast.ChatComposer.ComposeState;
import tv.periscope.android.ui.chat.ChatState;

/* compiled from: Twttr */
/* synthetic */ class y {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[ComposeState.values().length];
        try {
            b[ComposeState.Close.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[ComposeState.Send.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        a = new int[ChatState.values().length];
        try {
            a[ChatState.TooFull.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[ChatState.Limited.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[ChatState.Connected.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[ChatState.Punished.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[ChatState.Connecting.ordinal()] = 5;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[ChatState.Disabled.ordinal()] = 6;
        } catch (NoSuchFieldError e8) {
        }
        try {
            a[ChatState.Error.ordinal()] = 7;
        } catch (NoSuchFieldError e9) {
        }
    }
}
