package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.oi;

@oi
public final class GInAppPurchaseManagerInfoParcel implements SafeParcelable {
    public static final a CREATOR;
    public final int a;
    public final n b;
    public final ml c;
    public final Context d;
    public final m e;

    static {
        CREATOR = new a();
    }

    GInAppPurchaseManagerInfoParcel(int i, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4) {
        this.a = i;
        this.b = (n) m.a(k.a(iBinder));
        this.c = (ml) m.a(k.a(iBinder2));
        this.d = (Context) m.a(k.a(iBinder3));
        this.e = (m) m.a(k.a(iBinder4));
    }

    public GInAppPurchaseManagerInfoParcel(Context context, n nVar, ml mlVar, m mVar) {
        this.a = 2;
        this.d = context;
        this.b = nVar;
        this.c = mlVar;
        this.e = mVar;
    }

    public static GInAppPurchaseManagerInfoParcel a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundleExtra.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
            return (GInAppPurchaseManagerInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(Intent intent, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", gInAppPurchaseManagerInfoParcel);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    IBinder a() {
        return m.a(this.e).asBinder();
    }

    IBinder b() {
        return m.a(this.b).asBinder();
    }

    IBinder c() {
        return m.a(this.c).asBinder();
    }

    IBinder d() {
        return m.a(this.d).asBinder();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
