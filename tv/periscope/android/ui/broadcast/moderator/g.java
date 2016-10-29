package tv.periscope.android.ui.broadcast.moderator;

import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.ReportType;

/* compiled from: Twttr */
/* synthetic */ class g {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;

    static {
        b = new int[ReportType.values().length];
        try {
            b[ReportType.c.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[ReportType.b.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        a = new int[MessageType.values().length];
        try {
            a[MessageType.ViewerBlock.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MessageType.SelectedJuror.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
    }
}
