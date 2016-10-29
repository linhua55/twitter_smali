package defpackage;

import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import rx.am;

/* compiled from: Twttr */
/* renamed from: cqx */
class cqx extends am<Bitmap> {
    final /* synthetic */ cqs a;

    cqx(cqs cqs) {
        this.a = cqs;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Bitmap) obj);
    }

    public void bs_() {
        this.a.h();
    }

    public void a(Throwable th) {
        this.a.h();
    }

    public void a(Bitmap bitmap) {
        ViewCompat.postOnAnimation(this.a.d, new cqy(this, bitmap));
    }
}
