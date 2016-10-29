package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
class l extends a implements z {
    public l(p pVar, String str, String str2, j jVar) {
        this(pVar, str, str2, jVar, HttpMethod.GET);
    }

    l(p pVar, String str, String str2, j jVar, HttpMethod httpMethod) {
        super(pVar, str, str2, jVar, httpMethod);
    }

    public JSONObject a(y yVar) {
        HttpRequest httpRequest = null;
        try {
            Map b = b(yVar);
            httpRequest = a(a(b), yVar);
            f.h().a("Fabric", "Requesting settings from " + a());
            f.h().a("Fabric", "Settings query params were: " + b);
            JSONObject a = a(httpRequest);
            return a;
        } finally {
            if (httpRequest != null) {
                f.h().a("Fabric", "Settings request ID: " + httpRequest.b("X-REQUEST-ID"));
            }
        }
    }

    JSONObject a(HttpRequest httpRequest) {
        int b = httpRequest.b();
        f.h().a("Fabric", "Settings result was: " + b);
        if (a(b)) {
            return a(httpRequest.e());
        }
        f.h().e("Fabric", "Failed to retrieve settings from " + a());
        return null;
    }

    boolean a(int i) {
        return i == ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS || i == 201 || i == ApiRunnable.ACTION_CODE_PUBLIC_PING_WATCHING || i == ApiRunnable.ACTION_CODE_PUBLIC_END_WATCHING;
    }

    private JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (Throwable e) {
            f.h().a("Fabric", "Failed to parse settings JSON from " + a(), e);
            f.h().a("Fabric", "Settings response " + str);
            return null;
        }
    }

    private Map<String, String> b(y yVar) {
        Map<String, String> hashMap = new HashMap();
        hashMap.put("build_version", yVar.j);
        hashMap.put("display_version", yVar.i);
        hashMap.put("source", Integer.toString(yVar.k));
        if (yVar.l != null) {
            hashMap.put("icon_hash", yVar.l);
        }
        String str = yVar.h;
        if (!CommonUtils.c(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    private HttpRequest a(HttpRequest httpRequest, y yVar) {
        a(httpRequest, "X-CRASHLYTICS-API-KEY", yVar.a);
        a(httpRequest, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        a(httpRequest, "X-CRASHLYTICS-API-CLIENT-VERSION", this.a.a());
        a(httpRequest, "Accept", "application/json");
        a(httpRequest, "X-CRASHLYTICS-DEVICE-MODEL", yVar.b);
        a(httpRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", yVar.c);
        a(httpRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", yVar.d);
        a(httpRequest, "X-CRASHLYTICS-ADVERTISING-TOKEN", yVar.e);
        a(httpRequest, "X-CRASHLYTICS-INSTALLATION-ID", yVar.f);
        a(httpRequest, "X-CRASHLYTICS-ANDROID-ID", yVar.g);
        return httpRequest;
    }

    private void a(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.a(str, str2);
        }
    }
}
