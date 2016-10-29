package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import cxi;
import defpackage.cxh;
import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class c {
    private final Context a;
    private final cxh b;

    public c(Context context) {
        this.a = context.getApplicationContext();
        this.b = new cxi(context, "TwitterAdvertisingInfoPreferences");
    }

    public b a() {
        b b = b();
        if (c(b)) {
            f.h().a("Fabric", "Using AdvertisingInfo from Preference Store");
            a(b);
            return b;
        }
        b = e();
        b(b);
        return b;
    }

    private void a(b bVar) {
        new Thread(new d(this, bVar)).start();
    }

    @SuppressLint({"CommitPrefEdits"})
    private void b(b bVar) {
        if (c(bVar)) {
            this.b.a(this.b.b().putString("advertising_id", bVar.a).putBoolean("limit_ad_tracking_enabled", bVar.b));
        } else {
            this.b.a(this.b.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
        }
    }

    protected b b() {
        return new b(this.b.a().getString("advertising_id", ""), this.b.a().getBoolean("limit_ad_tracking_enabled", false));
    }

    public j c() {
        return new e(this.a);
    }

    public j d() {
        return new f(this.a);
    }

    private boolean c(b bVar) {
        return (bVar == null || TextUtils.isEmpty(bVar.a)) ? false : true;
    }

    private b e() {
        b a = c().a();
        if (c(a)) {
            f.h().a("Fabric", "Using AdvertisingInfo from Reflection Provider");
        } else {
            a = d().a();
            if (c(a)) {
                f.h().a("Fabric", "Using AdvertisingInfo from Service Provider");
            } else {
                f.h().a("Fabric", "AdvertisingInfo not present");
            }
        }
        return a;
    }
}
