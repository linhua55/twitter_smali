package defpackage;

import android.graphics.Bitmap;

/* compiled from: Twttr */
/* renamed from: dcp */
class dcp implements Runnable {
    final /* synthetic */ Bitmap a;
    final /* synthetic */ dco b;

    dcp(dco dco, Bitmap bitmap) {
        this.b = dco;
        this.a = bitmap;
    }

    public void run() {
        this.b.e.a(this.a);
    }
}
