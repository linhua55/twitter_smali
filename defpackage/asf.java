package defpackage;

import android.view.Choreographer;

/* compiled from: Twttr */
/* renamed from: asf */
class asf implements Runnable {
    final /* synthetic */ ase a;

    asf(ase ase) {
        this.a = ase;
    }

    public void run() {
        this.a.d = true;
        if (this.a.c == null) {
            this.a.c = Choreographer.getInstance();
        }
        this.a.c.postFrameCallback(this.a);
    }
}
