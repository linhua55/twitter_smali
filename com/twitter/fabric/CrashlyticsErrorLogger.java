package com.twitter.fabric;

import android.content.Context;
import bbl;
import bbm;
import bbn;
import cfb;
import com.twitter.util.Tristate;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.e;
import cto;
import cuj;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import u;
import v;

/* compiled from: Twttr */
public class CrashlyticsErrorLogger implements bbm {
    private final List<a> a;
    private final UncaughtExceptionHandler b;
    private Tristate c;
    private int d;
    private bbl e;
    private Map<String, Object> f;
    private long g;
    private cuj<String> h;

    /* compiled from: Twttr */
    class DroppedLogsException extends Exception {
        private static final long serialVersionUID = 5318315713537309149L;

        DroppedLogsException(String str) {
            super(str);
        }
    }

    public CrashlyticsErrorLogger(Context context, boolean z) {
        boolean z2 = true;
        this.a = MutableList.a();
        this.c = Tristate.a;
        p[] pVarArr = new p[1];
        v vVar = new v();
        if (z) {
            z2 = false;
        }
        pVarArr[0] = vVar.a(z2).a();
        f.a(context, pVarArr);
        this.b = Thread.getDefaultUncaughtExceptionHandler();
    }

    public void a(cuj<String> cuj_java_lang_String) {
        this.h = cuj_java_lang_String;
    }

    public synchronized void a(Tristate tristate) {
        this.c = tristate;
        if (this.c == Tristate.c) {
            for (a aVar : this.a) {
                a(aVar.a, aVar.b);
            }
            if (this.d > 0) {
                bbn.a(new DroppedLogsException("Dropped: " + this.d + " logs."));
            }
        }
        this.a.clear();
    }

    public synchronized void a(bbl bbl, Map<String, Object> map) {
        this.e = bbl;
        this.f = map;
        this.g = al.b();
        if (this.c == Tristate.c) {
            a(bbl, map, null, null, false);
            u.a(bbl.c());
        } else if (this.c == Tristate.a) {
            if (this.a.size() >= 100) {
                this.d++;
            } else {
                this.a.add(new a(bbl, map));
            }
        }
    }

    public synchronized void b(bbl bbl, Map<String, Object> map) {
        a(bbl, map, al.b() - this.g < 500 ? this.e : null, this.f, true);
        this.b.uncaughtException(Thread.currentThread(), bbl.c());
    }

    private void a(bbl bbl, Map<String, Object> map, bbl bbl2, Map<String, Object> map2, boolean z) {
        for (Entry entry : cto.a(new Iterable[]{e.a(map).entrySet(), bbl.a().entrySet()})) {
            a((String) entry.getKey(), entry.getValue(), z);
        }
        if (bbl2 != null) {
            Throwable c = bbl2.c();
            a("recent_error", c.toString(), z);
            a("recent_error_callstack", cfb.a(c), z);
            for (Entry entry2 : cto.a(new Iterable[]{e.a(map2).entrySet(), bbl2.a().entrySet()})) {
                String str = (String) entry2.getKey();
                if (this.h == null || this.h.a(str)) {
                    a("recent_error_kv_" + str, entry2.getValue(), z);
                }
            }
        }
        cfb.a("CrashlyticsErrorLogger", "Exception", bbl.c());
    }

    private static void a(String str, Object obj, boolean z) {
        String obj2 = obj != null ? obj.toString() : null;
        if ("user_name".equals(str)) {
            u.b(obj2);
        } else if (z) {
            a(str, obj2);
        } else {
            u.a(str + ": " + obj2);
        }
        cfb.b("CrashlyticsErrorLogger", str + ": " + obj2);
    }

    private static void a(String str, String str2) {
        if (str2 == null || str2.length() <= 1024) {
            u.a(str, str2);
            return;
        }
        String[] c = aj.c(str2, 1024);
        for (String a : c) {
            u.a(String.format(Locale.US, "%s_%02d", new Object[]{str, Integer.valueOf(r0)}), a);
        }
    }
}
