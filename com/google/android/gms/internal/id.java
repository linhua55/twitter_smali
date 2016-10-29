package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.overlay.q;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@oi
public class id implements hx {
    private final sz a;

    public id(Context context, VersionInfoParcel versionInfoParcel, y yVar) {
        this.a = ar.f().a(context, new AdSizeParcel(), false, false, yVar, versionInfoParcel);
        this.a.a().setWillNotDraw(true);
    }

    private void a(Runnable runnable) {
        if (aa.a().b()) {
            runnable.run();
        } else {
            qw.a.post(runnable);
        }
    }

    public void a() {
        this.a.destroy();
    }

    public void a(a aVar, q qVar, eu euVar, w wVar, boolean z, fr frVar, ft ftVar, l lVar, lw lwVar) {
        this.a.l().a(aVar, qVar, euVar, wVar, z, frVar, ftVar, new l(false), lwVar);
    }

    public void a(hy hyVar) {
        this.a.l().a(new ij(this, hyVar));
    }

    public void a(String str) {
        a(new ig(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str})));
    }

    public void a(String str, fj fjVar) {
        this.a.l().a(str, fjVar);
    }

    public void a(String str, String str2) {
        a(new if(this, str, str2));
    }

    public void a(String str, JSONObject jSONObject) {
        a(new ie(this, str, jSONObject));
    }

    public ji b() {
        return new jj(this);
    }

    public void b(String str) {
        a(new ii(this, str));
    }

    public void b(String str, fj fjVar) {
        this.a.l().b(str, fjVar);
    }

    public void b(String str, JSONObject jSONObject) {
        this.a.b(str, jSONObject);
    }

    public void c(String str) {
        a(new ih(this, str));
    }
}
