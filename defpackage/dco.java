package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;

/* compiled from: Twttr */
/* renamed from: dco */
class dco extends Thread {
    private final Context a;
    private final Bitmap b;
    private final float c;
    private final int d;
    private final dcq e;

    public dco(Context context, Bitmap bitmap, float f, int i, dcq dcq) {
        this.a = context;
        this.b = bitmap;
        this.c = f;
        this.d = i;
        this.e = dcq;
    }

    public void run() {
        Bitmap a = dcn.a(this.b, this.c);
        Bitmap a2 = dcn.a(this.a, a, this.d);
        if (a != this.b) {
            a.recycle();
        }
        if (this.e != null) {
            new Handler(Looper.getMainLooper()).post(new dcp(this, a2));
        }
    }
}
