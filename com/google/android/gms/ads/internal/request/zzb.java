package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.jo;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qq;
import com.google.android.gms.internal.qw;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.so;
import com.google.android.gms.internal.ss;
import com.google.android.gms.internal.y;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class zzb extends qb implements i {
    rj a;
    AdResponseParcel b;
    jo c;
    private final d d;
    private final a e;
    private final Object f;
    private final Context g;
    private final y h;
    private AdRequestInfoParcel i;
    private Runnable j;

    @oi
    final class zza extends Exception {
        private final int zzGu;

        public zza(String str, int i) {
            super(str);
            this.zzGu = i;
        }

        public int a() {
            return this.zzGu;
        }
    }

    public zzb(Context context, a aVar, y yVar, d dVar) {
        this.f = new Object();
        this.d = dVar;
        this.g = context;
        this.e = aVar;
        this.h = yVar;
    }

    private void a(int i, String str) {
        if (i == 3 || i == -1) {
            b.c(str);
        } else {
            b.d(str);
        }
        if (this.b == null) {
            this.b = new AdResponseParcel(i);
        } else {
            this.b = new AdResponseParcel(i, this.b.k);
        }
        this.d.a(new pt(this.i != null ? this.i : new AdRequestInfoParcel(this.e, null, -1), this.b, this.c, null, i, -1, this.b.n, null));
    }

    protected AdSizeParcel a(AdRequestInfoParcel adRequestInfoParcel) throws zza {
        if (this.b.m == null) {
            throw new zza("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.b.m.split("x");
        if (split.length != 2) {
            throw new zza("Invalid ad size format from the ad response: " + this.b.m, 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (AdSizeParcel adSizeParcel : adRequestInfoParcel.d.h) {
                float f = this.g.getResources().getDisplayMetrics().density;
                int i = adSizeParcel.f == -1 ? (int) (((float) adSizeParcel.g) / f) : adSizeParcel.f;
                int i2 = adSizeParcel.c == -2 ? (int) (((float) adSizeParcel.d) / f) : adSizeParcel.c;
                if (parseInt == i && parseInt2 == i2) {
                    return new AdSizeParcel(adSizeParcel, adRequestInfoParcel.d.h);
                }
            }
            throw new zza("The ad size from the ad response was not one of the requested sizes: " + this.b.m, 0);
        } catch (NumberFormatException e) {
            throw new zza("Invalid ad size number from the ad response: " + this.b.m, 0);
        }
    }

    rj a(VersionInfoParcel versionInfoParcel, so<AdRequestInfoParcel> soVar) {
        return g.a(this.g, versionInfoParcel, soVar, this);
    }

    public void a() {
        b.a("AdLoaderBackgroundTask started.");
        this.j = new e(this);
        qw.a.postDelayed(this.j, ((Long) cj.ax.c()).longValue());
        ss ssVar = new ss();
        long b = ar.i().b();
        qq.a(new f(this, ssVar));
        this.i = new AdRequestInfoParcel(this.e, this.h.a().a(this.g), b);
        ssVar.a(this.i);
    }

    public void a(@NonNull AdResponseParcel adResponseParcel) {
        b.a("Received ad response.");
        this.b = adResponseParcel;
        long b = ar.i().b();
        synchronized (this.f) {
            this.a = null;
        }
        try {
            if (this.b.e == -2 || this.b.e == -3) {
                JSONObject jSONObject;
                c();
                AdSizeParcel a = this.i.d.h != null ? a(this.i) : null;
                ar.h().a(this.b.v);
                if (!TextUtils.isEmpty(this.b.r)) {
                    try {
                        jSONObject = new JSONObject(this.b.r);
                    } catch (Throwable e) {
                        b.b("Error parsing the JSON for Active View.", e);
                    }
                    this.d.a(new pt(this.i, this.b, this.c, a, -2, b, this.b.n, jSONObject));
                    qw.a.removeCallbacks(this.j);
                    return;
                }
                jSONObject = null;
                this.d.a(new pt(this.i, this.b, this.c, a, -2, b, this.b.n, jSONObject));
                qw.a.removeCallbacks(this.j);
                return;
            }
            throw new zza("There was a problem getting an ad response. ErrorCode: " + this.b.e, this.b.e);
        } catch (zza e2) {
            a(e2.a(), e2.getMessage());
            qw.a.removeCallbacks(this.j);
        }
    }

    public void b() {
        synchronized (this.f) {
            if (this.a != null) {
                this.a.d();
            }
        }
    }

    protected void c() throws zza {
        if (this.b.e != -3) {
            if (TextUtils.isEmpty(this.b.c)) {
                throw new zza("No fill from ad server.", 3);
            }
            ar.h().a(this.g, this.b.u);
            if (this.b.h) {
                try {
                    this.c = new jo(this.b.c);
                } catch (JSONException e) {
                    throw new zza("Could not parse mediation config: " + this.b.c, 0);
                }
            }
        }
    }
}
