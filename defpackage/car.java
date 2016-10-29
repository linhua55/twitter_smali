package defpackage;

import com.twitter.config.AppConfig;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: car */
class car {
    public final caj a;
    public final String b;
    public boolean c;

    car(caj caj, String str) {
        this.a = caj;
        this.b = str;
        a();
    }

    public void a() {
        this.c = d.a(this.b, AppConfig.m().a());
    }
}
