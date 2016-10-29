package defpackage;

import android.support.annotation.UiThread;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.util.collection.MutableMap;
import java.util.Iterator;
import java.util.Map;

@UiThread
/* compiled from: Twttr */
/* renamed from: bzk */
public class bzk {
    private final int a;
    private final Map<bzp, bzl> b;
    private final bzl c;
    private final bzm d;

    public static boolean a() {
        return d.a("card_cache_enabled", AppConfig.m().p());
    }

    public bzk() {
        this(d.a("card_cache_limit_on_total", 20), d.a("card_cache_limit_on_type", 3));
    }

    public bzk(int i, int i2) {
        this.a = i;
        this.d = new bzo(i2);
        this.b = MutableMap.a();
        this.c = new bzl();
    }

    public cah a(bzp bzp) {
        bzl bzl = (bzl) this.b.get(bzp);
        if (bzl == null || bzl.c.isEmpty()) {
            bzl bzl2 = this.c;
            bzl2.b++;
            if (bzl != null) {
                bzl.b++;
            }
            return null;
        }
        Iterator it = bzl.c.iterator();
        cah cah = (cah) it.next();
        it.remove();
        this.c.c.remove(cah);
        bzl.a++;
        bzl = this.c;
        bzl.a++;
        return cah;
    }

    public boolean a(bzp bzp, cah cah) {
        return a(bzp, cah, this.d);
    }

    public boolean a(bzp bzp, cah cah, bzm bzm) {
        if (this.c.c.contains(cah)) {
            return false;
        }
        if (cah.q() != bzp) {
            throw new IllegalArgumentException("The key associated to card is not the same as the key provided in argument.");
        }
        Object obj = (bzl) this.b.get(bzp);
        if (obj == null) {
            obj = new bzl();
            this.b.put(bzp, obj);
        }
        if (!bzm.a(this, bzp, obj)) {
            return false;
        }
        this.c.c.add(cah);
        obj.c.add(cah);
        b();
        return true;
    }

    private void b() {
        if (this.c.a() > this.a) {
            Iterator it = this.c.c.iterator();
            cah cah = (cah) it.next();
            bzl bzl = (bzl) this.b.get(cah.q());
            it.remove();
            bzl.c.remove(cah);
        }
    }

    public final String toString() {
        return String.format("%s={ TotalLimit=%d, %s, %s }", new Object[]{super.toString(), Integer.valueOf(this.a), this.d, this.c});
    }
}
