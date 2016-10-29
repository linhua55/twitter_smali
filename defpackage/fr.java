package defpackage;

import android.os.Process;

/* compiled from: Twttr */
/* renamed from: fr */
class fr implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ fq b;

    fr(fq fqVar, Runnable runnable) {
        this.b = fqVar;
        this.a = runnable;
    }

    public void run() {
        try {
            Process.setThreadPriority(this.b.a);
        } catch (Throwable th) {
        }
        this.a.run();
    }
}
