package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONObject;

@oi
public class lv {
    private final sz a;
    private final String b;

    public lv(sz szVar) {
        this(szVar, BuildConfig.VERSION_NAME);
    }

    public lv(sz szVar, String str) {
        this.a = szVar;
        this.b = str;
    }

    public void a(int i, int i2, int i3, int i4) {
        try {
            this.a.b("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            b.b("Error occured while dispatching size change.", e);
        }
    }

    public void a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.a.b("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (Throwable e) {
            b.b("Error occured while obtaining screen information.", e);
        }
    }

    public void b(int i, int i2, int i3, int i4) {
        try {
            this.a.b("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            b.b("Error occured while dispatching default position.", e);
        }
    }

    public void b(String str) {
        try {
            this.a.b("onError", new JSONObject().put("message", str).put("action", this.b));
        } catch (Throwable e) {
            b.b("Error occurred while dispatching error event.", e);
        }
    }

    public void c(String str) {
        try {
            this.a.b("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (Throwable e) {
            b.b("Error occured while dispatching ready Event.", e);
        }
    }

    public void d(String str) {
        try {
            this.a.b("onStateChanged", new JSONObject().put("state", str));
        } catch (Throwable e) {
            b.b("Error occured while dispatching state change.", e);
        }
    }
}
