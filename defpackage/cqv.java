package defpackage;

import android.graphics.Bitmap;
import java.util.concurrent.TimeUnit;
import rx.am;
import rx.an;
import rx.p;
import rx.t;

/* compiled from: Twttr */
/* renamed from: cqv */
class cqv implements p<Bitmap> {
    final /* synthetic */ t a;
    final /* synthetic */ cqs b;

    cqv(cqs cqs, t tVar) {
        this.b = cqs;
        this.a = tVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super Bitmap> amVar) {
        an a = this.a.a();
        amVar.a(a);
        a.a(new cqw(this, a, amVar), 0, (long) this.b.a, TimeUnit.MILLISECONDS);
    }
}
