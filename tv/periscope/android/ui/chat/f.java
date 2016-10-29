package tv.periscope.android.ui.chat;

import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.SentenceType;
import tv.periscope.model.chat.MessageType.VerdictType;

/* compiled from: Twttr */
/* synthetic */ class f {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;
    static final /* synthetic */ int[] c;
    static final /* synthetic */ int[] d;

    static {
        d = new int[SentenceType.values().length];
        try {
            d[SentenceType.b.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            d[SentenceType.c.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            d[SentenceType.d.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            d[SentenceType.e.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            d[SentenceType.a.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        c = new int[ReportType.values().length];
        try {
            c[ReportType.c.ordinal()] = 1;
        } catch (NoSuchFieldError e6) {
        }
        try {
            c[ReportType.b.ordinal()] = 2;
        } catch (NoSuchFieldError e7) {
        }
        b = new int[MessageType.values().length];
        try {
            b[MessageType.BroadcasterBlockedViewer.ordinal()] = 1;
        } catch (NoSuchFieldError e8) {
        }
        try {
            b[MessageType.InviteFollowers.ordinal()] = 2;
        } catch (NoSuchFieldError e9) {
        }
        try {
            b[MessageType.SharedOnTwitter.ordinal()] = 3;
        } catch (NoSuchFieldError e10) {
        }
        try {
            b[MessageType.Join.ordinal()] = 4;
        } catch (NoSuchFieldError e11) {
        }
        try {
            b[MessageType.Chat.ordinal()] = 5;
        } catch (NoSuchFieldError e12) {
        }
        try {
            b[MessageType.Screenshot.ordinal()] = 6;
        } catch (NoSuchFieldError e13) {
        }
        try {
            b[MessageType.VoteTimeout.ordinal()] = 7;
        } catch (NoSuchFieldError e14) {
        }
        try {
            b[MessageType.JuryVerdict.ordinal()] = 8;
        } catch (NoSuchFieldError e15) {
        }
        try {
            b[MessageType.LocalPromptModeration.ordinal()] = 9;
        } catch (NoSuchFieldError e16) {
        }
        try {
            b[MessageType.LocalPromptConviction.ordinal()] = 10;
        } catch (NoSuchFieldError e17) {
        }
        try {
            b[MessageType.LocalPromptMutualsInChat.ordinal()] = 11;
        } catch (NoSuchFieldError e18) {
        }
        try {
            b[MessageType.BroadcastStartedLocally.ordinal()] = 12;
        } catch (NoSuchFieldError e19) {
        }
        try {
            b[MessageType.LocalPromptReplayScrubbing.ordinal()] = 13;
        } catch (NoSuchFieldError e20) {
        }
        a = new int[VerdictType.values().length];
        try {
            a[VerdictType.c.ordinal()] = 1;
        } catch (NoSuchFieldError e21) {
        }
        try {
            a[VerdictType.d.ordinal()] = 2;
        } catch (NoSuchFieldError e22) {
        }
        try {
            a[VerdictType.e.ordinal()] = 3;
        } catch (NoSuchFieldError e23) {
        }
        try {
            a[VerdictType.b.ordinal()] = 4;
        } catch (NoSuchFieldError e24) {
        }
    }
}
