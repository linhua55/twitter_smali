package defpackage;

import android.content.Context;
import asm;
import aso;
import asq;
import asr;
import bdb;
import bvk;
import bvo;
import civ;
import ciz;
import com.twitter.config.AppConfig;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.config.g;
import com.twitter.library.client.Session;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bvj */
public class bvj {
    private static final Set<asp> a;
    private static long b;
    private static bvk c;
    private static asm d;

    static {
        a = new LinkedHashSet();
    }

    public static void a(Context context) {
        cqf.a(c.class);
        if (AppConfig.m().p()) {
            if (d == null) {
                d = new asm(context);
                d.a(d);
            }
            try {
                d.a(new aso(asq.a(context, bdb.feature_switch_overrides)));
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        if (c == null) {
            bvk bvk = new bvk(context);
            d.a((g) bvk);
            bvj.a(bvk);
        }
    }

    private static void a(bvk bvk) {
        cqf.a(c.class);
        if (c != null) {
            for (asp b : a) {
                c.b(b);
            }
        }
        c = bvk;
        if (c != null) {
            for (asp b2 : a) {
                c.a(b2);
            }
            if (b != 0) {
                c.b(b);
            }
        }
    }

    private static bvk h() {
        if (c != null) {
            return c;
        }
        throw new IllegalStateException("FeatureSwitches.initialize() must be called first.");
    }

    public static long a() {
        return b;
    }

    public static void a(asp asp) {
        cqf.a(c.class);
        a.add(asp);
        if (c != null) {
            c.a(asp);
        }
    }

    public static void b(asp asp) {
        if (c != null) {
            c.b(asp);
        }
        a.remove(asp);
    }

    public static synchronized void a(Session session) {
        synchronized (bvj.class) {
            bvj.h().c(session.g());
        }
    }

    public static void b() {
        bvj.a(0);
    }

    public static synchronized void a(long j) {
        synchronized (bvj.class) {
            cqf.a(c.class);
            b = j;
            d.a(j);
            if (c != null) {
                c.b(j);
            }
            c.a(j);
        }
    }

    public static void b(long j) {
        if (c != null) {
            c.d(j);
        }
    }

    public static void c() {
        if (c != null) {
            c.c();
        }
    }

    public static asm d() {
        if (d != null) {
            return d;
        }
        throw new IllegalStateException("FeatureSwitches.initialize() must be called first.");
    }

    public static String e() {
        return bvj.h().a();
    }

    public static civ f() {
        return bvj.h().b();
    }

    public static void a(Context context, long j) {
        bvo.a(context, j);
        asr.b(context, j);
        asr.b(j);
        if (b == j) {
            bvj.b();
        }
    }

    public static String g() {
        return bvj.h().f();
    }

    public static boolean c(long j) {
        return bvj.h().a(j);
    }

    public static void a(Context context, long j, ciz ciz) {
        asr.a(context, j, ciz);
    }

    public static void a(long j, ciz ciz) {
        bvj.a(j, bvj.f(), ciz);
    }

    public static void a(long j, civ civ, ciz ciz) {
        bvj.h().a(j, civ, ciz);
    }
}
