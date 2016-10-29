package com.twitter.library.client.navigation;

import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class z {
    public static final z a;
    private final ab b;

    static {
        a = new z();
    }

    public static z a(w wVar) {
        return wVar != null ? new z(wVar) : a;
    }

    private z() {
        this.b = null;
    }

    private z(w wVar) {
        this.b = new ab(wVar);
        wVar.a(new aa(this));
        wVar.c(8);
    }

    public boolean a(y yVar) {
        if (this.b == null || !yVar.a(this.b.a)) {
            return false;
        }
        this.b.c.add(yVar);
        this.b.a(yVar.b(this.b.a));
        i();
        return true;
    }

    public void b(y yVar) {
        if (this.b != null && this.b.c.remove(yVar)) {
            yVar.c(this.b.a);
            h();
        }
    }

    public void a(x xVar) {
        if (this.b != null) {
            this.b.b.add(xVar);
        }
    }

    public boolean a() {
        return this.b != null;
    }

    public boolean b() {
        return (this.b == null || this.b.c.isEmpty()) ? false : true;
    }

    public w c() {
        return this.b != null ? this.b.a : null;
    }

    public ToolBar d() {
        return this.b != null ? this.b.a.j() : null;
    }

    public boolean e() {
        return b() && ((ab) e.a(this.b)).a.c();
    }

    public boolean f() {
        return b() && ((ab) e.a(this.b)).a.d();
    }

    public boolean g() {
        return b() && ((ab) e.a(this.b)).a.e();
    }

    public boolean a(CharSequence charSequence) {
        if (this.b == null) {
            return false;
        }
        if (!ObjectUtils.a((Object) charSequence, this.b.a.h())) {
            this.b.a.a(charSequence);
            h();
        }
        return true;
    }

    public boolean a(CharSequence charSequence, boolean z) {
        if (this.b == null) {
            return false;
        }
        if (!ObjectUtils.a((Object) charSequence, this.b.a.h())) {
            this.b.a.a(charSequence, z);
            h();
        }
        return true;
    }

    public boolean b(CharSequence charSequence) {
        if (this.b == null) {
            return false;
        }
        if (!ObjectUtils.a((Object) charSequence, this.b.a.i())) {
            this.b.a.b(charSequence);
            h();
        }
        return true;
    }

    public boolean b(CharSequence charSequence, boolean z) {
        if (this.b == null) {
            return false;
        }
        if (!ObjectUtils.a((Object) charSequence, this.b.a.i())) {
            this.b.a.b(charSequence, z);
            h();
        }
        return true;
    }

    public void a(TwitterUser twitterUser, UserSettings userSettings) {
        ((ab) e.a(this.b)).a.a(twitterUser, userSettings);
    }

    public void h() {
        if (this.b != null && !this.b.c.isEmpty()) {
            this.b.d = 0;
            for (y b : this.b.c) {
                this.b.a(b.b(this.b.a));
            }
            this.b.a.f();
            this.b.a.g();
            i();
        }
    }

    private void i() {
        if (this.b != null && this.b.d != 0) {
            this.b.a.c(this.b.d == 2 ? 0 : 8);
        }
    }
}
