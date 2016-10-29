package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONObject;

@oi
public class au extends ah {
    private final jh d;

    public au(Context context, AdSizeParcel adSizeParcel, ps psVar, VersionInfoParcel versionInfoParcel, be beVar, jh jhVar) {
        super(context, adSizeParcel, psVar, versionInfoParcel, beVar);
        this.d = jhVar;
        a(this.d);
        a();
        b(false);
        b.a("Tracking ad unit: " + this.b.d());
    }

    protected void b(JSONObject jSONObject) {
        this.d.a("AFMA_updateActiveView", jSONObject);
    }

    protected void c() {
        synchronized (this.a) {
            super.c();
            b(this.d);
        }
    }

    public void d() {
        c();
    }

    protected boolean j() {
        return true;
    }
}
