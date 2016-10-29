package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

public class PlacesParams implements SafeParcelable {
    public static final f CREATOR;
    public static final PlacesParams a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final int g;
    public final int h;

    static {
        a = new PlacesParams("com.google.android.gms", Locale.getDefault(), null);
        CREATOR = new f();
    }

    public PlacesParams(int i, String str, String str2, String str3, String str4, int i2, int i3) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = i2;
        this.h = i3;
    }

    public PlacesParams(String str, Locale locale, String str2) {
        this(3, str, locale.toString(), str2, null, b.a, 0);
    }

    public int describeContents() {
        f fVar = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PlacesParams)) {
            return false;
        }
        PlacesParams placesParams = (PlacesParams) obj;
        return this.g == placesParams.g && this.h == placesParams.h && this.d.equals(placesParams.d) && this.c.equals(placesParams.c) && bj.a(this.e, placesParams.e) && bj.a(this.f, placesParams.f);
    }

    public int hashCode() {
        return bj.a(this.c, this.d, this.e, this.f, Integer.valueOf(this.g), Integer.valueOf(this.h));
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return bj.a((Object) this).a("clientPackageName", this.c).a("locale", this.d).a("accountName", this.e).a("gCoreClientName", this.f).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        f fVar = CREATOR;
        f.a(this, parcel, i);
    }
}
