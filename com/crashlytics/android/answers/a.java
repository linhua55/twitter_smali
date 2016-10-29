package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.o;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.v;
import java.io.File;

/* compiled from: Twttr */
public class a extends p<Boolean> {
    y a;

    protected /* synthetic */ Object f() {
        return d();
    }

    public void a(io.fabric.sdk.android.services.common.p pVar) {
        if (this.a != null) {
            this.a.a(pVar.a());
        }
    }

    public void a(o oVar) {
        if (this.a != null) {
            this.a.a(oVar.a(), oVar.b());
        }
    }

    @SuppressLint({"NewApi"})
    protected boolean a_() {
        try {
            long j;
            Context E = E();
            PackageManager packageManager = E.getPackageManager();
            String packageName = E.getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String num = Integer.toString(packageInfo.versionCode);
            String str = packageInfo.versionName == null ? "0.0" : packageInfo.versionName;
            if (VERSION.SDK_INT >= 9) {
                j = packageInfo.firstInstallTime;
            } else {
                j = new File(packageManager.getApplicationInfo(packageName, 0).sourceDir).lastModified();
            }
            this.a = y.a(this, E, D(), num, str, j);
            this.a.b();
            return true;
        } catch (Throwable e) {
            f.h().e("Answers", "Error retrieving app properties", e);
            return false;
        }
    }

    protected Boolean d() {
        try {
            v b = q.a().b();
            if (b == null) {
                f.h().e("Answers", "Failed to retrieve settings");
                return Boolean.valueOf(false);
            } else if (b.d.d) {
                f.h().a("Answers", "Analytics collection enabled");
                this.a.a(b.e, e());
                return Boolean.valueOf(true);
            } else {
                f.h().a("Answers", "Analytics collection disabled");
                this.a.c();
                return Boolean.valueOf(false);
            }
        } catch (Throwable e) {
            f.h().e("Answers", "Error dealing with settings", e);
            return Boolean.valueOf(false);
        }
    }

    public String b() {
        return "com.crashlytics.sdk.android:answers";
    }

    public String a() {
        return "1.3.8.127";
    }

    String e() {
        return CommonUtils.b(E(), "com.crashlytics.ApiEndpoint");
    }
}
