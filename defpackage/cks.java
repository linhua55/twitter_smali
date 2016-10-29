package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cks */
public class cks {
    public static final n<cks> a;
    public final clf b;
    public final MomentPageDisplayMode c;
    public final String d;

    static {
        a = new cku();
    }

    public cks(ckt ckt) {
        this.b = (clf) e.a(ckt.a);
        this.c = (MomentPageDisplayMode) e.a(ckt.b);
        this.d = e.a(ckt.c);
    }

    public static cks a(long j, clf clf) {
        return cks.b(j, clf, MomentPageDisplayMode.a);
    }

    public static cks b(long j, clf clf) {
        return cks.b(j, clf, MomentPageDisplayMode.c);
    }

    public static cks c(long j, clf clf) {
        return cks.b(j, clf, MomentPageDisplayMode.b);
    }

    private static cks b(long j, clf clf, MomentPageDisplayMode momentPageDisplayMode) {
        return (cks) new ckt().a(cks.a(j, clf, momentPageDisplayMode)).a(momentPageDisplayMode).a(clf).q();
    }

    @VisibleForTesting
    public static String a(long j, clf clf, MomentPageDisplayMode momentPageDisplayMode) {
        return String.format("%s:%s:%s", new Object[]{String.valueOf(j), clf.b, momentPageDisplayMode.toString()});
    }
}
