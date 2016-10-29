package defpackage;

import cgu;
import com.twitter.model.av.MonetizationCategory;
import rx.o;

/* compiled from: Twttr */
/* renamed from: uq */
public class uq {
    private final up a;
    private o<cgu<MonetizationCategory>> b;

    public uq(up upVar) {
        this.a = upVar;
    }

    public o<cgu<MonetizationCategory>> a() {
        if (this.b == null) {
            this.b = this.a.a_(null).e();
        }
        return this.b;
    }
}
