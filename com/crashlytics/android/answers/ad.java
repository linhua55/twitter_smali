package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import cwu;
import java.io.IOException;
import org.json.JSONObject;

/* compiled from: Twttr */
class ad implements cwu<SessionEvent> {
    ad() {
    }

    public byte[] a(SessionEvent sessionEvent) throws IOException {
        return b(sessionEvent).toString().getBytes(Util.UTF_8);
    }

    @TargetApi(9)
    public JSONObject b(SessionEvent sessionEvent) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            ac acVar = sessionEvent.a;
            jSONObject.put("appBundleId", acVar.a);
            jSONObject.put("executionId", acVar.b);
            jSONObject.put("installationId", acVar.c);
            jSONObject.put("androidId", acVar.d);
            jSONObject.put("advertisingId", acVar.e);
            jSONObject.put("limitAdTrackingEnabled", acVar.f);
            jSONObject.put("betaDeviceToken", acVar.g);
            jSONObject.put("buildId", acVar.h);
            jSONObject.put("osVersion", acVar.i);
            jSONObject.put("deviceModel", acVar.j);
            jSONObject.put("appVersionCode", acVar.k);
            jSONObject.put("appVersionName", acVar.l);
            jSONObject.put("timestamp", sessionEvent.b);
            jSONObject.put("type", sessionEvent.c.toString());
            if (sessionEvent.d != null) {
                jSONObject.put("details", new JSONObject(sessionEvent.d));
            }
            jSONObject.put("customType", sessionEvent.e);
            if (sessionEvent.f != null) {
                jSONObject.put("customAttributes", new JSONObject(sessionEvent.f));
            }
            jSONObject.put("predefinedType", sessionEvent.g);
            if (sessionEvent.h != null) {
                jSONObject.put("predefinedAttributes", new JSONObject(sessionEvent.h));
            }
            return jSONObject;
        } catch (Throwable e) {
            if (VERSION.SDK_INT >= 9) {
                throw new IOException(e.getMessage(), e);
            }
            throw new IOException(e.getMessage());
        }
    }
}
