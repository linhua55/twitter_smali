package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.places.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceImpl implements SafeParcelable, a {
    public static final b CREATOR;
    final int a;
    private final String b;
    private final Bundle c;
    @Deprecated
    private final PlaceLocalization d;
    private final LatLng e;
    private final float f;
    private final LatLngBounds g;
    private final String h;
    private final Uri i;
    private final boolean j;
    private final float k;
    private final int l;
    private final long m;
    private final List<Integer> n;
    private final List<Integer> o;
    private final String p;
    private final String q;
    private final String r;
    private final String s;
    private final List<String> t;
    private final Map<Integer, String> u;
    private final TimeZone v;
    private Locale w;

    static {
        CREATOR = new b();
    }

    PlaceImpl(int i, String str, List<Integer> list, List<Integer> list2, Bundle bundle, String str2, String str3, String str4, String str5, List<String> list3, LatLng latLng, float f, LatLngBounds latLngBounds, String str6, Uri uri, boolean z, float f2, int i2, long j, PlaceLocalization placeLocalization) {
        List emptyList;
        this.a = i;
        this.b = str;
        this.o = Collections.unmodifiableList(list);
        this.n = list2;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.c = bundle;
        this.p = str2;
        this.q = str3;
        this.r = str4;
        this.s = str5;
        if (list3 == null) {
            emptyList = Collections.emptyList();
        }
        this.t = emptyList;
        this.e = latLng;
        this.f = f;
        this.g = latLngBounds;
        if (str6 == null) {
            str6 = "UTC";
        }
        this.h = str6;
        this.i = uri;
        this.j = z;
        this.k = f2;
        this.l = i2;
        this.m = j;
        this.u = Collections.unmodifiableMap(new HashMap());
        this.v = null;
        this.w = null;
        this.d = placeLocalization;
    }

    public /* synthetic */ CharSequence a() {
        return e();
    }

    public String b() {
        return this.b;
    }

    public List<Integer> c() {
        return this.o;
    }

    public List<Integer> d() {
        return this.n;
    }

    public int describeContents() {
        b bVar = CREATOR;
        return 0;
    }

    public String e() {
        return this.p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceImpl)) {
            return false;
        }
        PlaceImpl placeImpl = (PlaceImpl) obj;
        return this.b.equals(placeImpl.b) && bj.a(this.w, placeImpl.w) && this.m == placeImpl.m;
    }

    public String f() {
        return this.q;
    }

    public LatLng g() {
        return this.e;
    }

    public float h() {
        return this.f;
    }

    public int hashCode() {
        return bj.a(new Object[]{this.b, this.w, Long.valueOf(this.m)});
    }

    public LatLngBounds i() {
        return this.g;
    }

    public Uri j() {
        return this.i;
    }

    public String k() {
        return this.r;
    }

    public String l() {
        return this.s;
    }

    public List<String> m() {
        return this.t;
    }

    public boolean n() {
        return this.j;
    }

    public float o() {
        return this.k;
    }

    public int p() {
        return this.l;
    }

    public long q() {
        return this.m;
    }

    public Bundle r() {
        return this.c;
    }

    public String s() {
        return this.h;
    }

    @Deprecated
    public PlaceLocalization t() {
        return this.d;
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return bj.a(this).a("id", this.b).a("placeTypes", this.o).a("locale", this.w).a("name", this.p).a("address", this.q).a("phoneNumber", this.r).a("latlng", this.e).a("viewport", this.g).a("websiteUri", this.i).a("isPermanentlyClosed", Boolean.valueOf(this.j)).a("priceLevel", Integer.valueOf(this.l)).a("timestampSecs", Long.valueOf(this.m)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        b bVar = CREATOR;
        b.a(this, parcel, i);
    }
}
