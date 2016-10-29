package defpackage;

import cgu;
import com.twitter.model.av.MonetizationCategory;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import rx.o;
import ur;

/* compiled from: Twttr */
/* renamed from: us */
public final class us implements c<o<cgu<MonetizationCategory>>> {
    static final /* synthetic */ boolean a;
    private final cxj<uq> b;

    static {
        a = !us.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public us(cxj<uq> cxj_uq) {
        if (a || cxj_uq != null) {
            this.b = cxj_uq;
            return;
        }
        throw new AssertionError();
    }

    public o<cgu<MonetizationCategory>> a() {
        return (o) d.a(ur.a((uq) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<o<cgu<MonetizationCategory>>> a(cxj<uq> cxj_uq) {
        return new us(cxj_uq);
    }
}
