package com.twitter.config;

import defpackage.aob;
import defpackage.bbi;
import defpackage.cwf;
import defpackage.cwj;

@aob
/* compiled from: Twttr */
public abstract class AppConfig {
    private static AppConfig a;

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract boolean e();

    public abstract long f();

    public abstract long g();

    public abstract String h();

    public abstract int i();

    public abstract boolean j();

    public abstract boolean k();

    public abstract boolean l();

    public static AppConfig m() {
        if (bbi.r()) {
            return bbi.q().m();
        }
        if (a != null) {
            return a;
        }
        if (cwj.b()) {
            AppConfig appConfig = (AppConfig) cwf.a().c(AppConfig.class);
            if (appConfig != null) {
                return appConfig;
            }
        }
        throw new IllegalStateException("No AppConfig instance has been set");
    }

    public static boolean n() {
        return a != null;
    }

    public final boolean o() {
        return c() || d();
    }

    public final boolean p() {
        return a() || b();
    }
}
