package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AddPlaceRequest implements SafeParcelable {
    public static final Creator<AddPlaceRequest> CREATOR;
    final int a;
    private final String b;
    private final LatLng c;
    private final String d;
    private final List<Integer> e;
    private final String f;
    private final Uri g;

    static {
        CREATOR = new e();
    }

    AddPlaceRequest(int i, String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        boolean z = false;
        this.a = i;
        this.b = bm.a(str);
        this.c = (LatLng) bm.a(latLng);
        this.d = bm.a(str2);
        this.e = new ArrayList((Collection) bm.a(list));
        bm.b(!this.e.isEmpty(), "At least one place type should be provided.");
        if (!(TextUtils.isEmpty(str3) && uri == null)) {
            z = true;
        }
        bm.b(z, "One of phone number or URI should be provided.");
        this.f = str3;
        this.g = uri;
    }

    public String a() {
        return this.b;
    }

    public LatLng b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public List<Integer> d() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public String e() {
        return this.f;
    }

    @Nullable
    public Uri f() {
        return this.g;
    }

    public String toString() {
        return bj.a((Object) this).a("name", this.b).a("latLng", this.c).a("address", this.d).a("placeTypes", this.e).a("phoneNumer", this.f).a("websiteUri", this.g).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
