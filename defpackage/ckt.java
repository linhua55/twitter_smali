package defpackage;

import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: ckt */
public class ckt extends f<cks> {
    clf a;
    MomentPageDisplayMode b;
    String c;

    public ckt() {
        this.b = MomentPageDisplayMode.b;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public ckt a(clf clf) {
        this.a = clf;
        return this;
    }

    public ckt a(MomentPageDisplayMode momentPageDisplayMode) {
        this.b = momentPageDisplayMode;
        return this;
    }

    public ckt a(String str) {
        this.c = str;
        return this;
    }

    protected cks d() {
        return new cks(this);
    }
}
