package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: bus */
public class bus {
    private static bus a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;

    public static bus a() {
        h.a();
        if (a == null) {
            a = new bus();
        }
        return a;
    }

    private bus() {
        b();
    }

    protected void b() {
        this.b = c.c("modern_android_navigation_4166");
        this.c = c.a("modern_android_navigation_4166", "drawer", "drawer_avatar", "tabs_navdrawer", "tabs_navdrawer_avatar");
        this.d = c.a("modern_android_navigation_4166", "drawer_avatar", "tabs_navdrawer_avatar");
        this.e = d.a("drawer_account_switcher_enabled");
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.b;
    }

    public boolean f() {
        return this.c;
    }

    public boolean g() {
        return f() && this.d;
    }

    public boolean h() {
        return this.c && this.e;
    }
}
