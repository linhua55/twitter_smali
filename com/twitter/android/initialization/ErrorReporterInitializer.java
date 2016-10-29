package com.twitter.android.initialization;

import android.content.Context;
import android.os.Build;
import bbk;
import bbn;
import bvj;
import com.twitter.android.av;
import com.twitter.config.AppConfig;
import com.twitter.fabric.CrashlyticsErrorLogger;
import defpackage.aof;
import defpackage.bbo;

/* compiled from: Twttr */
public class ErrorReporterInitializer extends aof<Void> {
    private final boolean a;
    private final boolean b;

    public ErrorReporterInitializer(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    protected void a(Context context, Void voidR) {
        CrashlyticsErrorLogger crashlyticsErrorLogger = new CrashlyticsErrorLogger(context, this.a);
        if (this.a) {
            bvj.a(new b(this, crashlyticsErrorLogger));
            crashlyticsErrorLogger.a(new c(this));
            bbn.a(crashlyticsErrorLogger);
        }
        if (AppConfig.m().a()) {
            bbn.a(new bbo(context));
        }
        if (av.g()) {
            av a = av.a(context);
            a.f();
            bbn.a(a);
        }
        Thread.setDefaultUncaughtExceptionHandler(new d(context, Thread.getDefaultUncaughtExceptionHandler(), this.b));
        bbk a2 = bbn.a();
        a2.a("build_info", b());
        a2.a();
    }

    private static String b() {
        return "Git SHA: 34c2d0c942b3ac29bd2aef184aaba9d4d7a078d3 Display:" + Build.DISPLAY + " Fingerprint:" + Build.FINGERPRINT + " Brand:" + Build.BRAND + " Device:" + Build.DEVICE + " ID:" + Build.ID + " Product:" + Build.PRODUCT;
    }
}
