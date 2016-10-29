package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.i;
import com.google.ads.mediation.l;
import com.google.ads.mediation.o;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@oi
public final class lc<NETWORK_EXTRAS extends o, SERVER_PARAMETERS extends MediationServerParameters> extends kh {
    private final i<NETWORK_EXTRAS, SERVER_PARAMETERS> a;
    private final NETWORK_EXTRAS b;

    public lc(i<NETWORK_EXTRAS, SERVER_PARAMETERS> iVar, NETWORK_EXTRAS network_extras) {
        this.a = iVar;
        this.b = network_extras;
    }

    private SERVER_PARAMETERS a(String str, int i, String str2) throws RemoteException {
        Map hashMap;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    hashMap.put(str3, jSONObject.getString(str3));
                }
            } catch (Throwable th) {
                b.d("Could not get MediationServerParameters.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            hashMap = new HashMap(0);
        }
        Class c = this.a.c();
        if (c == null) {
            return null;
        }
        MediationServerParameters mediationServerParameters = (MediationServerParameters) c.newInstance();
        mediationServerParameters.a(hashMap);
        return mediationServerParameters;
    }

    public j a() throws RemoteException {
        if (this.a instanceof com.google.ads.mediation.j) {
            try {
                return m.a(((com.google.ads.mediation.j) this.a).d());
            } catch (Throwable th) {
                b.d("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationBannerAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(AdRequestParcel adRequestParcel, String str) {
    }

    public void a(AdRequestParcel adRequestParcel, String str, String str2) {
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, a aVar, String str2) throws RemoteException {
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException {
        a(jVar, adRequestParcel, str, null, kjVar);
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException {
        if (this.a instanceof l) {
            b.a("Requesting interstitial ad from adapter.");
            try {
                ((l) this.a).a(new ld(kjVar), (Activity) m.a(jVar), a(str, adRequestParcel.g, str2), lg.a(adRequestParcel), this.b);
            } catch (Throwable th) {
                b.d("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            b.d("MediationAdapter is not a MediationInterstitialAdapter: " + this.a.getClass().getCanonicalName());
            throw new RemoteException();
        }
    }

    public void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
    }

    public void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException {
        a(jVar, adSizeParcel, adRequestParcel, str, null, kjVar);
    }

    public void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException {
        if (this.a instanceof com.google.ads.mediation.j) {
            b.a("Requesting banner ad from adapter.");
            try {
                ((com.google.ads.mediation.j) this.a).a(new ld(kjVar), (Activity) m.a(jVar), a(str, adRequestParcel.g, str2), lg.a(adSizeParcel), lg.a(adRequestParcel), this.b);
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
        if (this.a instanceof l) {
            b.a("Showing interstitial from adapter.");
            try {
                ((l) this.a).e();
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
        throw new RemoteException();
    }

    public void e() throws RemoteException {
        throw new RemoteException();
    }

    public void f() {
    }

    public boolean g() {
        return true;
    }

    public kq h() {
        return null;
    }

    public kt i() {
        return null;
    }

    public Bundle j() {
        return new Bundle();
    }

    public Bundle k() {
        return new Bundle();
    }

    public Bundle l() {
        return new Bundle();
    }
}
