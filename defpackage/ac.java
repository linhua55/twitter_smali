package defpackage;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: ac */
class ac extends a {
    private final ae b;

    static String a(String str) {
        return "3:" + str;
    }

    public ac(p pVar, String str, String str2, j jVar, ae aeVar) {
        super(pVar, str, str2, jVar, HttpMethod.a);
        this.b = aeVar;
    }

    public ad a(String str, String str2, ab abVar) {
        Throwable e;
        Throwable th;
        ad adVar = null;
        HttpRequest a;
        try {
            Map a2 = a(abVar);
            try {
                a = a(a(a2), str, str2);
                f.h().a("Beta", "Checking for updates from " + a());
                f.h().a("Beta", "Checking for updates query params are: " + a2);
                if (a.c()) {
                    f.h().a("Beta", "Checking for updates was successful");
                    adVar = this.b.a(new JSONObject(a.e()));
                    if (a != null) {
                        f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
                    }
                } else {
                    f.h().e("Beta", "Checking for updates failed. Response code: " + a.b());
                    if (a != null) {
                        f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
                    }
                }
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("Beta", "Error while checking for updates from " + a(), e);
                    if (a != null) {
                        f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
                    }
                    return adVar;
                } catch (Throwable th2) {
                    th = th2;
                    if (a != null) {
                        f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
                    }
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            a = null;
            f.h().e("Beta", "Error while checking for updates from " + a(), e);
            if (a != null) {
                f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
            }
            return adVar;
        } catch (Throwable e4) {
            a = null;
            th = e4;
            if (a != null) {
                f.h().a("Fabric", "Checking for updates request ID: " + a.b("X-REQUEST-ID"));
            }
            throw th;
        }
        return adVar;
    }

    private HttpRequest a(HttpRequest httpRequest, String str, String str2) {
        return httpRequest.a("Accept", "application/json").a("User-Agent", "Crashlytics Android SDK/" + this.a.a()).a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa").a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", this.a.a()).a("X-CRASHLYTICS-API-KEY", str).a("X-CRASHLYTICS-BETA-TOKEN", ac.a(str2));
    }

    private Map<String, String> a(ab abVar) {
        Map<String, String> hashMap = new HashMap();
        hashMap.put("build_version", abVar.a);
        hashMap.put("display_version", abVar.b);
        hashMap.put("instance", abVar.c);
        hashMap.put("source", "3");
        return hashMap;
    }
}
