package defpackage;

import com.twitter.app.common.util.f;
import com.twitter.library.client.ab;

/* compiled from: Twttr */
/* renamed from: bvl */
class bvl implements Runnable {
    final /* synthetic */ bvk a;

    bvl(bvk bvk) {
        this.a = bvk;
    }

    public void run() {
        if (!f.a().c()) {
            ab.a(this.a.h).c();
            System.exit(0);
        }
    }
}
