package defpackage;

import atn;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.object.e;
import rx.am;
import rx.p;

/* compiled from: Twttr */
/* renamed from: atp */
class atp implements p<R> {
    final /* synthetic */ Object a;
    final /* synthetic */ atn b;

    atp(atn atn, Object obj) {
        this.b = atn;
        this.a = obj;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super R> amVar) {
        if (!amVar.b()) {
            try {
                x a = this.b.a(this.a);
                aa b = this.b.b(a);
                if (b.b() || !this.b.a()) {
                    amVar.b_(a);
                    amVar.bs_();
                    return;
                }
                throw ((Exception) e.b(b.c(), new Exception(b.e(), b.c())));
            } catch (Throwable e) {
                amVar.a(e);
            }
        }
    }
}
