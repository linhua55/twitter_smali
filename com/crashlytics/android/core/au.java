package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.ad;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.util.Map.Entry;

/* compiled from: Twttr */
class au extends a implements at {
    public au(p pVar, String str, String str2, j jVar) {
        super(pVar, str, str2, jVar, HttpMethod.b);
    }

    public boolean a(as asVar) {
        HttpRequest b = b(a(b(), asVar), asVar);
        f.h().a("CrashlyticsCore", "Sending report to: " + a());
        int b2 = b.b();
        f.h().a("CrashlyticsCore", "Create report request ID: " + b.b("X-REQUEST-ID"));
        f.h().a("CrashlyticsCore", "Result was: " + b2);
        return ad.a(b2) == 0;
    }

    private HttpRequest a(HttpRequest httpRequest, as asVar) {
        HttpRequest a = httpRequest.a("X-CRASHLYTICS-API-KEY", asVar.a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", f.e().a());
        HttpRequest httpRequest2 = a;
        for (Entry a2 : asVar.b.e().entrySet()) {
            httpRequest2 = httpRequest2.a(a2);
        }
        return httpRequest2;
    }

    private HttpRequest b(HttpRequest httpRequest, as asVar) {
        bx bxVar = asVar.b;
        return httpRequest.a("report[file]", bxVar.b(), "application/octet-stream", bxVar.d()).e("report[identifier]", bxVar.c());
    }
}
