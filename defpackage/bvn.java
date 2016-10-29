package defpackage;

import android.widget.Toast;

/* compiled from: Twttr */
/* renamed from: bvn */
class bvn implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ bvk b;

    bvn(bvk bvk, String str) {
        this.b = bvk;
        this.a = str;
    }

    public void run() {
        Toast.makeText(this.b.h, "Feature Switches exception occurred. " + this.a, 1).show();
    }
}
