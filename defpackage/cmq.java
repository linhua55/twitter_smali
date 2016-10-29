package defpackage;

import cms;
import cmt;
import com.twitter.model.core.ap;
import com.twitter.model.core.j;
import com.twitter.util.aj;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cmq */
public class cmq {
    public static final n<cmq> a;
    public final long b;
    public final long c;
    public final long d;
    public final String e;
    public final String f;
    public final boolean g;
    public final j<ap> h;

    static {
        a = new cmt();
    }

    private cmq(cms cms) {
        this.b = cms.a(cms);
        if (cms.b(cms) > 0) {
            this.c = cms.b(cms);
        } else {
            this.c = this.b;
        }
        this.d = cms.c(cms);
        this.e = cms.d(cms);
        this.f = aj.a(cms.e(cms)) ? null : cms.e(cms);
        this.g = cms.f(cms);
        this.h = cms.g(cms);
    }
}
