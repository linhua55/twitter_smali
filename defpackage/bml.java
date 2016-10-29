package defpackage;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bml */
public abstract class bml extends b<t<cnd, cnc>> {
    protected final String a;
    protected final String b;
    protected int c;
    protected int g;

    protected /* synthetic */ c f() {
        return e();
    }

    protected bml(Context context, String str, ab abVar, String str2, String str3) {
        super(context, str, abVar);
        this.a = str2;
        this.b = str3;
        k("Push destination changes are always considered as a non-user action");
    }

    public int b() {
        return this.g;
    }

    protected e a(e eVar) {
        eVar.a("udid", this.a).a("enabled_for", (long) this.c).a("app_version", 15);
        if (this.b != null) {
            eVar.a("token", this.b);
        }
        if (AppConfig.m().b()) {
            eVar.a("environment", 2);
        }
        return eVar;
    }

    protected t<cnd, cnc> e() {
        return v.a(cnd.class, cnc.class);
    }

    protected cnd a(t<cnd, cnc> tVar) {
        return (cnd) tVar.b();
    }

    protected cnc b(t<cnd, cnc> tVar) {
        return (cnc) tVar.c();
    }
}
