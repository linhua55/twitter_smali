package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.ad;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;

/* compiled from: Twttr */
abstract class a extends io.fabric.sdk.android.services.common.a {
    public a(p pVar, String str, String str2, j jVar, HttpMethod httpMethod) {
        super(pVar, str, str2, jVar, httpMethod);
    }

    public boolean a(d dVar) {
        HttpRequest b = b(a(b(), dVar), dVar);
        f.h().a("Fabric", "Sending app info to " + a());
        if (dVar.j != null) {
            f.h().a("Fabric", "App icon hash is " + dVar.j.a);
            f.h().a("Fabric", "App icon size is " + dVar.j.c + "x" + dVar.j.d);
        }
        int b2 = b.b();
        f.h().a("Fabric", ("POST".equals(b.p()) ? "Create" : "Update") + " app request ID: " + b.b("X-REQUEST-ID"));
        f.h().a("Fabric", "Result was " + b2);
        if (ad.a(b2) == 0) {
            return true;
        }
        return false;
    }

    private HttpRequest a(HttpRequest httpRequest, d dVar) {
        return httpRequest.a("X-CRASHLYTICS-API-KEY", dVar.a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", this.a.a());
    }

    private HttpRequest b(HttpRequest httpRequest, d dVar) {
        HttpRequest e = httpRequest.e("app[identifier]", dVar.b).e("app[name]", dVar.f).e("app[display_version]", dVar.c).e("app[build_version]", dVar.d).a("app[source]", Integer.valueOf(dVar.g)).e("app[minimum_sdk_version]", dVar.h).e("app[built_sdk_version]", dVar.i);
        if (!CommonUtils.c(dVar.e)) {
            e.e("app[instance_identifier]", dVar.e);
        }
        if (dVar.j != null) {
            Closeable closeable = null;
            try {
                closeable = this.a.E().getResources().openRawResource(dVar.j.b);
                e.e("app[icon][hash]", dVar.j.a).a("app[icon][data]", "icon.png", "application/octet-stream", (InputStream) closeable).a("app[icon][width]", Integer.valueOf(dVar.j.c)).a("app[icon][height]", Integer.valueOf(dVar.j.d));
            } catch (Throwable e2) {
                f.h().e("Fabric", "Failed to find app icon with resource ID: " + dVar.j.b, e2);
            } finally {
                String str = "Failed to close app icon InputStream.";
                CommonUtils.a(closeable, str);
            }
        }
        if (dVar.k != null) {
            for (r rVar : dVar.k) {
                e.e(a(rVar), rVar.b());
                e.e(b(rVar), rVar.c());
            }
        }
        return e;
    }

    String a(r rVar) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", new Object[]{rVar.a()});
    }

    String b(r rVar) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", new Object[]{rVar.a()});
    }
}
