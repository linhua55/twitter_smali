package tv.periscope.android.ui.broadcast;

import defpackage.dcv;
import tv.periscope.android.library.o;

/* compiled from: Twttr */
class ah implements Runnable {
    final /* synthetic */ ae a;

    ah(ae aeVar) {
        this.a = aeVar;
    }

    public void run() {
        if (!this.a.k()) {
            if (this.a.g.h()) {
                dcv.a("PlayerHelper", "Buffering for more than 1000, showing loading bars.");
                if (this.a.c.C()) {
                    this.a.a.a(this.a.l().getString(o.ps__trying_to_reconnect));
                } else {
                    this.a.a.a(this.a.l().getString(o.ps__loading));
                }
            }
            this.a.A = false;
        }
    }
}
