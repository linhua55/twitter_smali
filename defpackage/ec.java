package defpackage;

import cb;
import com.facebook.cache.common.a;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
/* renamed from: ec */
class ec implements Callable<gj> {
    final /* synthetic */ AtomicBoolean a;
    final /* synthetic */ a b;
    final /* synthetic */ eb c;

    ec(eb ebVar, AtomicBoolean atomicBoolean, a aVar) {
        this.c = ebVar;
        this.a = atomicBoolean;
        this.b = aVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public gj a() throws Exception {
        com.facebook.common.references.a a;
        if (this.a.get()) {
            throw new CancellationException();
        }
        gj a2 = this.c.g.a(this.b);
        if (a2 != null) {
            cb.a(eb.a, "Found image for %s in staging area", this.b.toString());
            this.c.h.g();
        } else {
            cb.a(eb.a, "Did not find image for %s in staging area", this.b.toString());
            this.c.h.h();
            try {
                a = com.facebook.common.references.a.a(this.c.a(this.b));
                a2 = new gj(a);
                com.facebook.common.references.a.c(a);
            } catch (Exception e) {
                return null;
            } catch (Throwable th) {
                com.facebook.common.references.a.c(a);
            }
        }
        if (!Thread.interrupted()) {
            return a2;
        }
        cb.a(eb.a, "Host thread was interrupted, decreasing reference count");
        if (a2 != null) {
            a2.close();
        }
        throw new InterruptedException();
    }
}
