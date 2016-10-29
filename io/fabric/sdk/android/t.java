package io.fabric.sdk.android;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.network.b;
import io.fabric.sdk.android.services.network.j;
import io.fabric.sdk.android.services.settings.aa;
import io.fabric.sdk.android.services.settings.d;
import io.fabric.sdk.android.services.settings.e;
import io.fabric.sdk.android.services.settings.h;
import io.fabric.sdk.android.services.settings.n;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.v;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import retrofit.mime.MultipartTypedOutput;

/* compiled from: Twttr */
class t extends p<Boolean> {
    private final j a;
    private PackageManager b;
    private String c;
    private PackageInfo d;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private final Future<Map<String, r>> p;
    private final Collection<p> q;

    protected /* synthetic */ Object f() {
        return d();
    }

    public t(Future<Map<String, r>> future, Collection<p> collection) {
        this.a = new b();
        this.p = future;
        this.q = collection;
    }

    public String a() {
        return "1.3.12.127";
    }

    protected boolean a_() {
        try {
            this.m = D().j();
            this.b = E().getPackageManager();
            this.c = E().getPackageName();
            this.d = this.b.getPackageInfo(this.c, 0);
            this.k = Integer.toString(this.d.versionCode);
            this.l = this.d.versionName == null ? "0.0" : this.d.versionName;
            this.n = this.b.getApplicationLabel(E().getApplicationInfo()).toString();
            this.o = Integer.toString(E().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (Throwable e) {
            f.h().e("Fabric", "Failed init", e);
            return false;
        }
    }

    protected Boolean d() {
        boolean a;
        String k = CommonUtils.k(E());
        v g = g();
        if (g != null) {
            try {
                Map map;
                if (this.p != null) {
                    map = (Map) this.p.get();
                } else {
                    map = new HashMap();
                }
                a = a(k, g.a, a(map, this.q).values());
            } catch (Throwable e) {
                f.h().e("Fabric", "Error performing auto configuration.", e);
            }
            return Boolean.valueOf(a);
        }
        a = false;
        return Boolean.valueOf(a);
    }

    private v g() {
        try {
            q.a().a(this, this.i, this.a, this.k, this.l, e()).c();
            return q.a().b();
        } catch (Throwable e) {
            f.h().e("Fabric", "Error dealing with settings", e);
            return null;
        }
    }

    Map<String, r> a(Map<String, r> map, Collection<p> collection) {
        for (p pVar : collection) {
            if (!map.containsKey(pVar.b())) {
                map.put(pVar.b(), new r(pVar.b(), pVar.a(), MultipartTypedOutput.DEFAULT_TRANSFER_ENCODING));
            }
        }
        return map;
    }

    public String b() {
        return "io.fabric.sdk.android:fabric";
    }

    private boolean a(String str, e eVar, Collection<r> collection) {
        if ("new".equals(eVar.b)) {
            if (b(str, eVar, collection)) {
                return q.a().d();
            }
            f.h().e("Fabric", "Failed to create app with Crashlytics service.", null);
            return false;
        } else if ("configured".equals(eVar.b)) {
            return q.a().d();
        } else {
            if (!eVar.e) {
                return true;
            }
            f.h().a("Fabric", "Server says an update is required - forcing a full App update.");
            c(str, eVar, collection);
            return true;
        }
    }

    private boolean b(String str, e eVar, Collection<r> collection) {
        return new h(this, e(), eVar.c, this.a).a(a(n.a(E(), str), (Collection) collection));
    }

    private boolean c(String str, e eVar, Collection<r> collection) {
        return a(eVar, n.a(E(), str), (Collection) collection);
    }

    private boolean a(e eVar, n nVar, Collection<r> collection) {
        return new aa(this, e(), eVar.c, this.a).a(a(nVar, (Collection) collection));
    }

    private d a(n nVar, Collection<r> collection) {
        return new d(new k().a(E()), D().c(), this.l, this.k, CommonUtils.a(CommonUtils.m(r0)), this.n, DeliveryMechanism.a(this.m).a(), this.o, "0", nVar, collection);
    }

    String e() {
        return CommonUtils.b(E(), "com.crashlytics.ApiEndpoint");
    }
}
