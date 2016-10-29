package defpackage;

import android.graphics.Bitmap;

/* compiled from: Twttr */
/* renamed from: cqy */
class cqy implements Runnable {
    final /* synthetic */ Bitmap a;
    final /* synthetic */ cqx b;

    cqy(cqx cqx, Bitmap bitmap) {
        this.b = cqx;
        this.a = bitmap;
    }

    public void run() {
        if (this.a == null) {
            this.b.a.h();
        } else if (this.b.a.g != null && this.b.a.j) {
            this.b.a.g.a(this.a);
        }
    }
}
