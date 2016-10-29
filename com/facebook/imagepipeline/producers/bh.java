package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.facebook.common.references.a;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.memory.ad;
import com.facebook.imagepipeline.memory.f;
import gj;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class bh implements bw<gj> {
    private final ab a;
    private final f b;
    private final bj c;

    public bh(ab abVar, f fVar, bj bjVar) {
        this.a = abVar;
        this.b = fVar;
        this.c = bjVar;
    }

    public void a(o<gj> oVar, bx bxVar) {
        bxVar.c().a(bxVar.b(), "NetworkFetchProducer");
        af a = this.c.a((o) oVar, bxVar);
        this.c.a(a, new bi(this, a));
    }

    private void a(af afVar, InputStream inputStream, int i) throws IOException {
        ad b;
        if (i > 0) {
            b = this.a.b(i);
        } else {
            b = this.a.b();
        }
        byte[] bArr = (byte[]) this.b.a(AccessibilityNodeInfoCompat.ACTION_COPY);
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    break;
                } else if (read > 0) {
                    b.write(bArr, 0, read);
                    a(b, afVar);
                    afVar.a().b(a(b.b(), i));
                }
            } finally {
                this.b.a(bArr);
                b.close();
            }
        }
        this.c.a(afVar, b.b());
        b(b, afVar);
    }

    private static float a(int i, int i2) {
        return i2 > 0 ? ((float) i) / ((float) i2) : 1.0f - ((float) Math.exp(((double) (-i)) / 50000.0d));
    }

    private void a(ad adVar, af afVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (b(afVar) && elapsedRealtime - afVar.f() >= 100) {
            afVar.a(elapsedRealtime);
            afVar.d().a(afVar.c(), "NetworkFetchProducer", "intermediate_result");
            a(adVar, false, afVar.a());
        }
    }

    private void b(ad adVar, af afVar) {
        afVar.d().a(afVar.c(), "NetworkFetchProducer", a(afVar, adVar.b()));
        a(adVar, true, afVar.a());
    }

    private void a(ad adVar, boolean z, o<gj> oVar) {
        gj gjVar;
        Throwable th;
        a a = a.a(adVar.c());
        try {
            gjVar = new gj(a);
            try {
                gjVar.k();
                oVar.b(gjVar, z);
                gj.d(gjVar);
                a.c(a);
            } catch (Throwable th2) {
                th = th2;
                gj.d(gjVar);
                a.c(a);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            gjVar = null;
            gj.d(gjVar);
            a.c(a);
            throw th;
        }
    }

    private void a(af afVar, Throwable th) {
        afVar.d().a(afVar.c(), "NetworkFetchProducer", th, null);
        afVar.a().b(th);
    }

    private void a(af afVar) {
        afVar.d().b(afVar.c(), "NetworkFetchProducer", null);
        afVar.a().b();
    }

    private boolean b(af afVar) {
        if (afVar.b().a().h()) {
            return this.c.a(afVar);
        }
        return false;
    }

    @Nullable
    private Map<String, String> a(af afVar, int i) {
        if (afVar.d().b(afVar.c())) {
            return this.c.b(afVar, i);
        }
        return null;
    }
}
