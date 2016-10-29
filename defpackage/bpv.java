package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.library.av.q;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: bpv */
public class bpv {
    private static final int[] a;
    private static bpv b;
    private final boolean c;
    private final boolean d;

    static {
        a = new int[1];
        b = null;
    }

    @VisibleForTesting
    public bpv(bpw bpw) {
        this.c = bpw.a;
        this.d = bpw.b;
    }

    public static bpv a() {
        synchronized (a) {
            if (b == null) {
                b = bpv.d();
            }
        }
        return b;
    }

    public static boolean a(String str) {
        if (str != null && str.contains("avc1.4D401E")) {
            return bpv.a().b();
        }
        if (str == null || !str.contains("avc1.64001E")) {
            return true;
        }
        return bpv.a().c();
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    private static bpv d() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Object bpw = new bpw(countDownLatch);
        q.a().b().post(bpw);
        try {
            countDownLatch.await(5, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        return new bpv(bpw);
    }
}
