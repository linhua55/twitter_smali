package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.j;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;

@oi
public class AdSizeParcel implements SafeParcelable {
    public static final w CREATOR;
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;
    public final int g;
    public final AdSizeParcel[] h;
    public final boolean i;
    public final boolean j;
    public boolean k;

    static {
        CREATOR = new w();
    }

    public AdSizeParcel() {
        this(5, "interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    AdSizeParcel(int i, String str, int i2, int i3, boolean z, int i4, int i5, AdSizeParcel[] adSizeParcelArr, boolean z2, boolean z3, boolean z4) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
        this.g = i5;
        this.h = adSizeParcelArr;
        this.i = z2;
        this.j = z3;
        this.k = z4;
    }

    public AdSizeParcel(Context context, g gVar) {
        this(context, new g[]{gVar});
    }

    public AdSizeParcel(Context context, g[] gVarArr) {
        int i;
        int i2;
        g gVar = gVarArr[0];
        this.a = 5;
        this.e = false;
        this.j = gVar.c();
        if (this.j) {
            this.f = g.a.b();
            this.c = g.a.a();
        } else {
            this.f = gVar.b();
            this.c = gVar.a();
        }
        boolean z = this.f == -1;
        boolean z2 = this.c == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            if (aa.a().c(context) && aa.a().d(context)) {
                this.g = a(displayMetrics) - aa.a().e(context);
            } else {
                this.g = a(displayMetrics);
            }
            double d = (double) (((float) this.g) / displayMetrics.density);
            i = (int) d;
            if (d - ((double) ((int) d)) >= 0.01d) {
                i++;
            }
            i2 = i;
        } else {
            i = this.f;
            this.g = aa.a().a(displayMetrics, this.f);
            i2 = i;
        }
        i = z2 ? c(displayMetrics) : this.c;
        this.d = aa.a().a(displayMetrics, i);
        if (z || z2) {
            this.b = i2 + "x" + i + "_as";
        } else if (this.j) {
            this.b = "320x50_mb";
        } else {
            this.b = gVar.toString();
        }
        if (gVarArr.length > 1) {
            this.h = new AdSizeParcel[gVarArr.length];
            for (int i3 = 0; i3 < gVarArr.length; i3++) {
                this.h[i3] = new AdSizeParcel(context, gVarArr[i3]);
            }
        } else {
            this.h = null;
        }
        this.i = false;
        this.k = false;
    }

    public AdSizeParcel(AdSizeParcel adSizeParcel, AdSizeParcel[] adSizeParcelArr) {
        this(5, adSizeParcel.b, adSizeParcel.c, adSizeParcel.d, adSizeParcel.e, adSizeParcel.f, adSizeParcel.g, adSizeParcelArr, adSizeParcel.i, adSizeParcel.j, adSizeParcel.k);
    }

    public static int a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static AdSizeParcel a() {
        return new AdSizeParcel(5, "reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static AdSizeParcel a(Context context) {
        return new AdSizeParcel(5, "320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public static int b(DisplayMetrics displayMetrics) {
        return (int) (((float) c(displayMetrics)) * displayMetrics.density);
    }

    private static int c(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        return i <= 400 ? 32 : i <= 720 ? 50 : 90;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public g b() {
        return j.a(this.f, this.c, this.b);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        w.a(this, parcel, i);
    }
}
