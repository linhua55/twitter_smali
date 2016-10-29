package com.crashlytics.android.answers;

import cxb;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.ad;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.j;
import java.io.File;
import java.util.List;

/* compiled from: Twttr */
class x extends a implements cxb {
    private final String b;

    public x(p pVar, String str, String str2, j jVar, String str3) {
        super(pVar, str, str2, jVar, HttpMethod.b);
        this.b = str3;
    }

    public boolean a(List<File> list) {
        HttpRequest a = b().a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", this.a.a()).a("X-CRASHLYTICS-API-KEY", this.b);
        int i = 0;
        for (File file : list) {
            a.a("session_analytics_file_" + i, file.getName(), "application/vnd.crashlytics.android.events", file);
            i++;
        }
        f.h().a("Answers", "Sending " + list.size() + " analytics files to " + a());
        int b = a.b();
        f.h().a("Answers", "Response code for analytics file send is " + b);
        if (ad.a(b) == 0) {
            return true;
        }
        return false;
    }
}
