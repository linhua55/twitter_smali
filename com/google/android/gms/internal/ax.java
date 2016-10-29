package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class ax extends ah {
    private iy d;
    private boolean e;

    public ax(Context context, AdSizeParcel adSizeParcel, ps psVar, VersionInfoParcel versionInfoParcel, be beVar, ik ikVar) {
        super(context, adSizeParcel, psVar, versionInfoParcel, beVar);
        this.d = ikVar.b();
        try {
            this.d.a(new ay(this, a(beVar.c().a())), new az(this));
        } catch (JSONException e) {
        } catch (Throwable e2) {
            b.b("Failure while processing active view data.", e2);
        }
        this.d.a(new ba(this), new bb(this));
        b.a("Tracking ad unit: " + this.b.d());
    }

    protected void b(JSONObject jSONObject) {
        this.d.a(new bc(this, jSONObject), new sq());
    }

    protected void c() {
        synchronized (this.a) {
            super.c();
            this.d.a(new bd(this), new sq());
            this.d.a();
        }
    }

    protected boolean j() {
        return this.e;
    }
}
