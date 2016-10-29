package defpackage;

import android.os.Process;
import aoh;

/* compiled from: Twttr */
/* renamed from: aoi */
class aoi implements Runnable {
    final /* synthetic */ aof a;
    final /* synthetic */ Object b;
    final /* synthetic */ aoh c;

    aoi(aoh aoh, aof aof, Object obj) {
        this.c = aoh;
        this.a = aof;
        this.b = obj;
    }

    public void run() {
        Process.setThreadPriority(10);
        this.a.a(aoh.a(this.c), this.b);
    }
}
