package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.e;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public final class jr implements jv {
    private final String a;
    private final kd b;
    private final long c;
    private final jo d;
    private final jn e;
    private final AdRequestParcel f;
    private final AdSizeParcel g;
    private final Context h;
    private final Object i;
    private final VersionInfoParcel j;
    private final boolean k;
    private final NativeAdOptionsParcel l;
    private final List<String> m;
    private final boolean n;
    private kg o;
    private int p;
    private kn q;

    public jr(Context context, String str, kd kdVar, jo joVar, jn jnVar, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, VersionInfoParcel versionInfoParcel, boolean z, boolean z2, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
        this.i = new Object();
        this.p = -2;
        this.h = context;
        this.b = kdVar;
        this.e = jnVar;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.a = b();
        } else {
            this.a = str;
        }
        this.d = joVar;
        this.c = joVar.b != -1 ? joVar.b : 10000;
        this.f = adRequestParcel;
        this.g = adSizeParcel;
        this.j = versionInfoParcel;
        this.k = z;
        this.n = z2;
        this.l = nativeAdOptionsParcel;
        this.m = list;
    }

    private String a(String str) {
        if (!(str == null || !e() || b(2))) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.remove("cpm_floor_cents");
                str = jSONObject.toString();
            } catch (JSONException e) {
                b.d("Could not remove field. Returning the original value");
            }
        }
        return str;
    }

    private void a(long j, long j2, long j3, long j4) {
        while (this.p == -2) {
            b(j, j2, j3, j4);
        }
    }

    private void a(jq jqVar) {
        if ("com.google.ads.mediation.AdUrlAdapter".equals(this.a)) {
            Bundle bundle = this.f.m.getBundle(this.a);
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("sdk_less_network_id", this.e.b);
            this.f.m.putBundle(this.a, bundle);
        }
        String a = a(this.e.h);
        try {
            if (this.j.d < 4100000) {
                if (this.g.e) {
                    this.o.a(m.a(this.h), this.f, a, jqVar);
                } else {
                    this.o.a(m.a(this.h), this.g, this.f, a, jqVar);
                }
            } else if (this.k) {
                this.o.a(m.a(this.h), this.f, a, this.e.a, jqVar, this.l, this.m);
            } else if (this.g.e) {
                this.o.a(m.a(this.h), this.f, a, this.e.a, jqVar);
            } else if (!this.n) {
                this.o.a(m.a(this.h), this.g, this.f, a, this.e.a, jqVar);
            } else if (this.e.k != null) {
                this.o.a(m.a(this.h), this.f, a, this.e.a, jqVar, new NativeAdOptionsParcel(b(this.e.o)), this.e.n);
            } else {
                this.o.a(m.a(this.h), this.g, this.f, a, this.e.a, jqVar);
            }
        } catch (Throwable e) {
            b.d("Could not request ad from mediation adapter.", e);
            a(5);
        }
    }

    private static c b(String str) {
        e eVar = new e();
        if (str == null) {
            return eVar.a();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            eVar.b(jSONObject.optBoolean("multiple_images", false));
            eVar.a(jSONObject.optBoolean("only_urls", false));
            eVar.a(c(jSONObject.optString("native_image_orientation", "any")));
        } catch (Throwable e) {
            b.d("Exception occurred when creating native ad options", e);
        }
        return eVar.a();
    }

    private String b() {
        try {
            if (!TextUtils.isEmpty(this.e.e)) {
                return this.b.b(this.e.e) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            b.d("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private void b(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        elapsedRealtime = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || elapsedRealtime <= 0) {
            b.c("Timed out waiting for adapter.");
            this.p = 3;
            return;
        }
        try {
            this.i.wait(Math.min(j5, elapsedRealtime));
        } catch (InterruptedException e) {
            this.p = -1;
        }
    }

    private boolean b(int i) {
        try {
            Bundle l = this.k ? this.o.l() : this.g.e ? this.o.k() : this.o.j();
            if (l == null) {
                return false;
            }
            return (l.getInt("capabilities", 0) & i) == i;
        } catch (RemoteException e) {
            b.d("Could not get adapter info. Returning false");
            return false;
        }
    }

    private static int c(String str) {
        return "landscape".equals(str) ? 2 : "portrait".equals(str) ? 1 : 0;
    }

    private kn c() {
        if (this.p != 0 || !e()) {
            return null;
        }
        try {
            if (!(!b(4) || this.q == null || this.q.a() == 0)) {
                return this.q;
            }
        } catch (RemoteException e) {
            b.d("Could not get cpm value from MediationResponseMetadata");
        }
        return c(f());
    }

    private static kn c(int i) {
        return new jt(i);
    }

    private kg d() {
        b.c("Instantiating mediation adapter: " + this.a);
        if (((Boolean) cj.av.c()).booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.a)) {
            return new kx(new AdMobAdapter());
        }
        if (((Boolean) cj.aw.c()).booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.a)) {
            return new kx(new AdUrlAdapter());
        }
        try {
            return this.b.a(this.a);
        } catch (Throwable e) {
            b.a("Could not instantiate mediation adapter: " + this.a, e);
            return null;
        }
    }

    private boolean e() {
        return this.d.j != -1;
    }

    private int f() {
        if (this.e.h == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.e.h);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.a)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int optInt = b(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return optInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : optInt;
        } catch (JSONException e) {
            b.d("Could not convert to json. Returning 0");
            return 0;
        }
    }

    public ju a(long j, long j2) {
        ju juVar;
        synchronized (this.i) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            jq jqVar = new jq();
            qw.a.post(new js(this, jqVar));
            a(elapsedRealtime, this.c, j, j2);
            juVar = new ju(this.e, this.o, this.a, jqVar, this.p, c());
        }
        return juVar;
    }

    public void a() {
        synchronized (this.i) {
            try {
                if (this.o != null) {
                    this.o.c();
                }
            } catch (Throwable e) {
                b.d("Could not destroy mediation adapter.", e);
            }
            this.p = -1;
            this.i.notify();
        }
    }

    public void a(int i) {
        synchronized (this.i) {
            this.p = i;
            this.i.notify();
        }
    }

    public void a(int i, kn knVar) {
        synchronized (this.i) {
            this.p = i;
            this.q = knVar;
            this.i.notify();
        }
    }
}
