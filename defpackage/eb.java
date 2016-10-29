package defpackage;

import av;
import bx;
import cb;
import com.facebook.cache.common.a;
import com.facebook.cache.disk.s;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.memory.ae;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
/* renamed from: eb */
public class eb {
    private static final Class<?> a;
    private final s b;
    private final ab c;
    private final ae d;
    private final Executor e;
    private final Executor f;
    private final fc g;
    private final eu h;

    static {
        a = eb.class;
    }

    public eb(s sVar, ab abVar, ae aeVar, Executor executor, Executor executor2, eu euVar) {
        this.b = sVar;
        this.c = abVar;
        this.d = aeVar;
        this.e = executor;
        this.f = executor2;
        this.h = euVar;
        this.g = fc.a();
    }

    public h<gj> a(a aVar, AtomicBoolean atomicBoolean) {
        bx.a(aVar);
        bx.a(atomicBoolean);
        Object a = this.g.a(aVar);
        if (a != null) {
            cb.a(a, "Found image for %s in staging area", aVar.toString());
            this.h.g();
            return h.a(a);
        }
        try {
            return h.a(new ec(this, atomicBoolean, aVar), this.e);
        } catch (Exception e) {
            cb.b(a, e, "Failed to schedule disk-cache read for %s", new Object[]{aVar.toString()});
            return h.a(e);
        }
    }

    public void a(a aVar, gj gjVar) {
        bx.a(aVar);
        bx.a(gj.e(gjVar));
        this.g.a(aVar, gjVar);
        gj a = gj.a(gjVar);
        try {
            this.f.execute(new ed(this, aVar, a));
        } catch (Throwable e) {
            cb.b(a, e, "Failed to schedule disk-cache write for %s", new Object[]{aVar.toString()});
            this.g.b(aVar, gjVar);
            gj.d(a);
        }
    }

    public h<Void> a() {
        this.g.b();
        try {
            return h.a(new ee(this), this.f);
        } catch (Exception e) {
            cb.b(a, e, "Failed to schedule disk-cache clear", new Object[0]);
            return h.a(e);
        }
    }

    private PooledByteBuffer a(a aVar) throws IOException {
        InputStream a;
        try {
            cb.a(a, "Disk cache read for %s", aVar.toString());
            av a2 = this.b.a(aVar);
            if (a2 == null) {
                cb.a(a, "Disk cache miss for %s", aVar.toString());
                this.h.j();
                return null;
            }
            cb.a(a, "Found entry in disk cache for %s", aVar.toString());
            this.h.i();
            a = a2.a();
            PooledByteBuffer b = this.c.b(a, (int) a2.b());
            a.close();
            cb.a(a, "Successful read from disk cache for %s", aVar.toString());
            return b;
        } catch (Throwable e) {
            cb.b(a, e, "Exception reading from cache for %s", new Object[]{aVar.toString()});
            this.h.k();
            throw e;
        } catch (Throwable th) {
            a.close();
        }
    }

    private void b(a aVar, gj gjVar) {
        cb.a(a, "About to write to disk-cache for key %s", aVar.toString());
        try {
            this.b.a(aVar, new ef(this, gjVar));
            cb.a(a, "Successful disk-cache write for key %s", aVar.toString());
        } catch (Throwable e) {
            cb.b(a, e, "Failed to write to disk-cache for key %s", new Object[]{aVar.toString()});
        }
    }
}
