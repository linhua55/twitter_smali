package defpackage;

import android.graphics.Bitmap;

/* compiled from: Twttr */
/* renamed from: aif */
class aif implements cys<Bitmap> {
    final /* synthetic */ aie a;

    aif(aie aie) {
        this.a = aie;
    }

    public /* synthetic */ void call(Object obj) {
        a((Bitmap) obj);
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            this.a.b.put(this.a.c.h(), bitmap);
        }
    }
}
