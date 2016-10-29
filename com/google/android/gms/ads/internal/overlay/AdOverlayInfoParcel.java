package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.eu;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;

@oi
public final class AdOverlayInfoParcel implements SafeParcelable {
    public static final p CREATOR;
    public final int a;
    public final AdLauncherIntentInfoParcel b;
    public final a c;
    public final q d;
    public final sz e;
    public final eu f;
    public final String g;
    public final boolean h;
    public final String i;
    public final w j;
    public final int k;
    public final int l;
    public final String m;
    public final VersionInfoParcel n;
    public final fr o;
    public final String p;
    public final InterstitialAdParameterParcel q;

    static {
        CREATOR = new p();
    }

    AdOverlayInfoParcel(int i, AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i2, int i3, String str3, VersionInfoParcel versionInfoParcel, IBinder iBinder6, String str4, InterstitialAdParameterParcel interstitialAdParameterParcel) {
        this.a = i;
        this.b = adLauncherIntentInfoParcel;
        this.c = (a) m.a(k.a(iBinder));
        this.d = (q) m.a(k.a(iBinder2));
        this.e = (sz) m.a(k.a(iBinder3));
        this.f = (eu) m.a(k.a(iBinder4));
        this.g = str;
        this.h = z;
        this.i = str2;
        this.j = (w) m.a(k.a(iBinder5));
        this.k = i2;
        this.l = i3;
        this.m = str3;
        this.n = versionInfoParcel;
        this.o = (fr) m.a(k.a(iBinder6));
        this.p = str4;
        this.q = interstitialAdParameterParcel;
    }

    public AdOverlayInfoParcel(a aVar, q qVar, w wVar, sz szVar, int i, VersionInfoParcel versionInfoParcel, String str, InterstitialAdParameterParcel interstitialAdParameterParcel) {
        this.a = 4;
        this.b = null;
        this.c = aVar;
        this.d = qVar;
        this.e = szVar;
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = null;
        this.j = wVar;
        this.k = i;
        this.l = 1;
        this.m = null;
        this.n = versionInfoParcel;
        this.o = null;
        this.p = str;
        this.q = interstitialAdParameterParcel;
    }

    public AdOverlayInfoParcel(a aVar, q qVar, w wVar, sz szVar, boolean z, int i, VersionInfoParcel versionInfoParcel) {
        this.a = 4;
        this.b = null;
        this.c = aVar;
        this.d = qVar;
        this.e = szVar;
        this.f = null;
        this.g = null;
        this.h = z;
        this.i = null;
        this.j = wVar;
        this.k = i;
        this.l = 2;
        this.m = null;
        this.n = versionInfoParcel;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(a aVar, q qVar, eu euVar, w wVar, sz szVar, boolean z, int i, String str, VersionInfoParcel versionInfoParcel, fr frVar) {
        this.a = 4;
        this.b = null;
        this.c = aVar;
        this.d = qVar;
        this.e = szVar;
        this.f = euVar;
        this.g = null;
        this.h = z;
        this.i = null;
        this.j = wVar;
        this.k = i;
        this.l = 3;
        this.m = str;
        this.n = versionInfoParcel;
        this.o = frVar;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(a aVar, q qVar, eu euVar, w wVar, sz szVar, boolean z, int i, String str, String str2, VersionInfoParcel versionInfoParcel, fr frVar) {
        this.a = 4;
        this.b = null;
        this.c = aVar;
        this.d = qVar;
        this.e = szVar;
        this.f = euVar;
        this.g = str2;
        this.h = z;
        this.i = str;
        this.j = wVar;
        this.k = i;
        this.l = 3;
        this.m = null;
        this.n = versionInfoParcel;
        this.o = frVar;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, a aVar, q qVar, w wVar, VersionInfoParcel versionInfoParcel) {
        this.a = 4;
        this.b = adLauncherIntentInfoParcel;
        this.c = aVar;
        this.d = qVar;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = null;
        this.j = wVar;
        this.k = -1;
        this.l = 4;
        this.m = null;
        this.n = versionInfoParcel;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public static AdOverlayInfoParcel a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    IBinder a() {
        return m.a(this.c).asBinder();
    }

    IBinder b() {
        return m.a(this.d).asBinder();
    }

    IBinder c() {
        return m.a(this.e).asBinder();
    }

    IBinder d() {
        return m.a(this.f).asBinder();
    }

    public int describeContents() {
        return 0;
    }

    IBinder e() {
        return m.a(this.o).asBinder();
    }

    IBinder f() {
        return m.a(this.j).asBinder();
    }

    public void writeToParcel(Parcel parcel, int i) {
        p.a(this, parcel, i);
    }
}
