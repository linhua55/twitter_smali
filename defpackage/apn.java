package defpackage;

import cgu;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.app.drafts.m;
import com.twitter.app.drafts.n;
import com.twitter.app.drafts.p;
import com.twitter.model.drafts.d;
import cvi;
import rx.o;

/* compiled from: Twttr */
/* renamed from: apn */
public class apn implements m {
    private final n a;
    private final o<cgu<d>> b;

    public apn(n nVar, p pVar, long j) {
        this.a = nVar;
        this.b = this.a.a(j);
        pVar.a();
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.RETAINED) {
            cvi.a(this.a);
        }
    }

    public o<cgu<d>> a() {
        return this.b;
    }
}
