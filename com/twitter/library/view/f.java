package com.twitter.library.view;

import com.twitter.library.media.manager.i;
import com.twitter.media.request.b;
import com.twitter.util.al;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: Twttr */
final class f extends TimerTask {
    final /* synthetic */ Iterator a;
    final /* synthetic */ i b;
    final /* synthetic */ Timer c;

    f(Iterator it, i iVar, Timer timer) {
        this.a = it;
        this.b = iVar;
        this.c = timer;
    }

    public void run() {
        int i = 0;
        while (this.a.hasNext()) {
            int i2 = i + 1;
            if (i >= 10) {
                break;
            }
            h hVar = (h) this.a.next();
            if (hVar.a(al.b() / 1000)) {
                this.b.a(new b(hVar.b).a(d.e).a());
            }
            i = i2;
        }
        if (!this.a.hasNext()) {
            this.c.cancel();
        }
    }
}
