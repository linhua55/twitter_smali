package tv.periscope.android.chat;

import defpackage.dcv;
import defpackage.u;

/* compiled from: Twttr */
class s implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ String b;
    final /* synthetic */ f c;
    final /* synthetic */ String d;
    final /* synthetic */ r e;

    s(r rVar, long j, String str, f fVar, String str2) {
        this.e = rVar;
        this.a = j;
        this.b = str;
        this.c = fVar;
        this.d = str2;
    }

    public void run() {
        dcv.a("ReplayConsumer", "Fetching more from channel with this token " + this.a + ", cursor: " + this.b);
        if (this.e.g.a(this.c)) {
            try {
                this.e.e.a(this.d, this.a, this.b);
            } catch (IllegalStateException e) {
                u.a("Could not call history on: " + this.c + " with cursor " + this.b);
                throw e;
            }
        }
    }
}
