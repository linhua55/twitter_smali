package io.fabric.sdk.android.services.settings;

import android.annotation.SuppressLint;
import android.content.SharedPreferences.Editor;
import cxi;
import defpackage.cxh;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.q;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
class j implements u {
    private final y a;
    private final x b;
    private final q c;
    private final g d;
    private final z e;
    private final p f;
    private final cxh g;

    public j(p pVar, y yVar, q qVar, x xVar, g gVar, z zVar) {
        this.f = pVar;
        this.a = yVar;
        this.c = qVar;
        this.b = xVar;
        this.d = gVar;
        this.e = zVar;
        this.g = new cxi(this.f);
    }

    public v a() {
        return a(SettingsCacheBehavior.USE_CACHE);
    }

    public v a(SettingsCacheBehavior settingsCacheBehavior) {
        Throwable th;
        v vVar;
        Throwable th2;
        v vVar2 = null;
        try {
            if (!(f.i() || d())) {
                vVar2 = b(settingsCacheBehavior);
            }
            if (vVar2 == null) {
                try {
                    JSONObject a = this.e.a(this.a);
                    if (a != null) {
                        vVar2 = this.b.a(this.c, a);
                        this.d.a(vVar2.g, a);
                        a(a, "Loaded settings: ");
                        a(b());
                    }
                } catch (Throwable e) {
                    th = e;
                    vVar = vVar2;
                    th2 = th;
                    f.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", th2);
                    return vVar;
                }
            }
            vVar = vVar2;
            if (vVar == null) {
                try {
                    vVar = b(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
                } catch (Exception e2) {
                    th2 = e2;
                    f.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", th2);
                    return vVar;
                }
            }
        } catch (Throwable e3) {
            th = e3;
            vVar = null;
            th2 = th;
            f.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", th2);
            return vVar;
        }
        return vVar;
    }

    private v b(SettingsCacheBehavior settingsCacheBehavior) {
        Throwable th;
        v vVar = null;
        try {
            if (SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                return null;
            }
            JSONObject a = this.d.a();
            if (a != null) {
                v a2 = this.b.a(this.c, a);
                if (a2 != null) {
                    a(a, "Loaded cached settings: ");
                    long a3 = this.c.a();
                    if (SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) || !a2.a(a3)) {
                        try {
                            f.h().a("Fabric", "Returning cached settings.");
                            return a2;
                        } catch (Throwable e) {
                            Throwable th2 = e;
                            vVar = a2;
                            th = th2;
                            f.h().e("Fabric", "Failed to get cached settings", th);
                            return vVar;
                        }
                    }
                    f.h().a("Fabric", "Cached settings have expired.");
                    return null;
                }
                f.h().e("Fabric", "Failed to transform cached settings data.", null);
                return null;
            }
            f.h().a("Fabric", "No cached settings data found.");
            return null;
        } catch (Exception e2) {
            th = e2;
            f.h().e("Fabric", "Failed to get cached settings", th);
            return vVar;
        }
    }

    private void a(JSONObject jSONObject, String str) throws JSONException {
        f.h().a("Fabric", str + jSONObject.toString());
    }

    String b() {
        return CommonUtils.a(CommonUtils.m(this.f.E()));
    }

    String c() {
        return this.g.a().getString("existing_instance_identifier", "");
    }

    @SuppressLint({"CommitPrefEdits"})
    boolean a(String str) {
        Editor b = this.g.b();
        b.putString("existing_instance_identifier", str);
        return this.g.a(b);
    }

    boolean d() {
        return !c().equals(b());
    }
}
