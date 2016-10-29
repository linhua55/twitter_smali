package defpackage;

import com.twitter.library.api.search.r;
import com.twitter.library.client.az;

/* compiled from: Twttr */
/* renamed from: tf */
class tf implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ th d;
    final /* synthetic */ te e;

    tf(te teVar, String str, int i, int i2, th thVar) {
        this.e = teVar;
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = thVar;
    }

    public void run() {
        az.a(this.e.b).a(new r(this.e.b, this.e.c, this.a.trim(), this.b, this.c, this.e.e), new tg(this));
    }
}
