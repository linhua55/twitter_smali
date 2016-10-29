package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.ads.internal.reward.mediation.client.d;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import ih;
import ij;
import il;
import in;
import ip;
import iq;
import ir;
import iv;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@oi
public final class kx extends kh {
    private final ih a;
    private ky b;

    public kx(ih ihVar) {
        this.a = ihVar;
    }

    private Bundle a(String str, int i, String str2) throws RemoteException {
        b.d("Server parameters: " + str);
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    bundle2.putString(str3, jSONObject.getString(str3));
                }
                bundle = bundle2;
            }
            if (this.a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                bundle.putInt("tagForChildDirectedTreatment", i);
            }
            return bundle;
        } catch (Throwable th) {
            b.d("Could not get Server Parameters Bundle.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public j a() throws RemoteException {
        if (this.a instanceof ij) {
            try {
                return m.a(((ij) this.a).d());
            } catch (Throwable th) {
                b.d("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationBannerAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(AdRequestParcel adRequestParcel, String str) throws RemoteException {
        a(adRequestParcel, str, null);
    }

    public void a(AdRequestParcel adRequestParcel, String str, String str2) throws RemoteException {
        if (this.a instanceof iv) {
            b.a("Requesting rewarded video ad from adapter.");
            try {
                iv ivVar = (iv) this.a;
                ivVar.a(new kw(adRequestParcel.b == -1 ? null : new Date(adRequestParcel.b), adRequestParcel.d, adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.k, adRequestParcel.f, adRequestParcel.g, adRequestParcel.r), a(str, adRequestParcel.g, str2), adRequestParcel.m != null ? adRequestParcel.m.getBundle(ivVar.getClass().getName()) : null);
            } catch (Throwable th) {
                b.d("Could not load rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, a aVar, String str2) throws RemoteException {
        if (this.a instanceof iv) {
            b.a("Initialize rewarded video adapter.");
            try {
                iv ivVar = (iv) this.a;
                ivVar.a((Context) m.a(jVar), new kw(adRequestParcel.b == -1 ? null : new Date(adRequestParcel.b), adRequestParcel.d, adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.k, adRequestParcel.f, adRequestParcel.g, adRequestParcel.r), str, new d(aVar), a(str2, adRequestParcel.g, null), adRequestParcel.m != null ? adRequestParcel.m.getBundle(ivVar.getClass().getName()) : null);
            } catch (Throwable th) {
                b.d("Could not initialize rewarded video adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException {
        a(jVar, adRequestParcel, str, null, kjVar);
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException {
        if (this.a instanceof il) {
            b.a("Requesting interstitial ad from adapter.");
            try {
                il ilVar = (il) this.a;
                ilVar.a((Context) m.a(jVar), new ky(kjVar), a(str, adRequestParcel.g, str2), new kw(adRequestParcel.b == -1 ? null : new Date(adRequestParcel.b), adRequestParcel.d, adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.k, adRequestParcel.f, adRequestParcel.g, adRequestParcel.r), adRequestParcel.m != null ? adRequestParcel.m.getBundle(ilVar.getClass().getName()) : null);
            } catch (Throwable th) {
                b.d("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationInterstitialAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) throws RemoteException {
        if (this.a instanceof in) {
            try {
                in inVar = (in) this.a;
                lb lbVar = new lb(adRequestParcel.b == -1 ? null : new Date(adRequestParcel.b), adRequestParcel.d, adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.k, adRequestParcel.f, adRequestParcel.g, nativeAdOptionsParcel, list, adRequestParcel.r);
                Bundle bundle = adRequestParcel.m != null ? adRequestParcel.m.getBundle(inVar.getClass().getName()) : null;
                this.b = new ky(kjVar);
                inVar.a((Context) m.a(jVar), this.b, a(str, adRequestParcel.g, str2), lbVar, bundle);
            } catch (Throwable th) {
                b.d("Could not request native ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationNativeAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException {
        a(jVar, adSizeParcel, adRequestParcel, str, null, kjVar);
    }

    public void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException {
        if (this.a instanceof ij) {
            b.a("Requesting banner ad from adapter.");
            try {
                ij ijVar = (ij) this.a;
                ijVar.a((Context) m.a(jVar), new ky(kjVar), a(str, adRequestParcel.g, str2), com.google.android.gms.ads.j.a(adSizeParcel.f, adSizeParcel.c, adSizeParcel.b), new kw(adRequestParcel.b == -1 ? null : new Date(adRequestParcel.b), adRequestParcel.d, adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.k, adRequestParcel.f, adRequestParcel.g, adRequestParcel.r), adRequestParcel.m != null ? adRequestParcel.m.getBundle(ijVar.getClass().getName()) : null);
            } catch (Throwable th) {
                b.d("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationBannerAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void b() throws RemoteException {
        if (this.a instanceof il) {
            b.a("Showing interstitial from adapter.");
            try {
                ((il) this.a).e();
            } catch (Throwable th) {
                b.d("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationInterstitialAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void c() throws RemoteException {
        try {
            this.a.a();
        } catch (Throwable th) {
            b.d("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void d() throws RemoteException {
        try {
            this.a.b();
        } catch (Throwable th) {
            b.d("Could not pause adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void e() throws RemoteException {
        try {
            this.a.c();
        } catch (Throwable th) {
            b.d("Could not resume adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void f() throws RemoteException {
        if (this.a instanceof iv) {
            b.a("Show rewarded video ad from adapter.");
            try {
                ((iv) this.a).g();
            } catch (Throwable th) {
                b.d("Could not show rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public boolean g() throws RemoteException {
        if (this.a instanceof iv) {
            b.a("Check if adapter is initialized.");
            try {
                return ((iv) this.a).h();
            } catch (Throwable th) {
                b.d("Could not check if adapter is initialized.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationRewardedVideoAdAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public kq h() {
        ip a = this.b.a();
        return a instanceof iq ? new kz((iq) a) : null;
    }

    public kt i() {
        ip a = this.b.a();
        return a instanceof ir ? new la((ir) a) : null;
    }

    public Bundle j() {
        if (this.a instanceof tx) {
            return ((tx) this.a).e();
        }
        b.d("MediationAdapter is not a v2 MediationBannerAdapter: " + this.a.getClass().getCanonicalName());
        return new Bundle();
    }

    public Bundle k() {
        if (this.a instanceof tz) {
            return ((tz) this.a).f();
        }
        b.d("MediationAdapter is not a v2 MediationInterstitialAdapter: " + this.a.getClass().getCanonicalName());
        return new Bundle();
    }

    public Bundle l() {
        return new Bundle();
    }
}
