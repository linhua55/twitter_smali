package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class WebImage implements SafeParcelable {
    public static final Creator<WebImage> CREATOR;
    private final int a;
    private final Uri b;
    private final int c;
    private final int d;

    static {
        CREATOR = new h();
    }

    WebImage(int i, Uri uri, int i2, int i3) {
        this.a = i;
        this.b = uri;
        this.c = i2;
        this.d = i3;
    }

    int a() {
        return this.a;
    }

    public Uri b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return bj.a(this.b, webImage.b) && this.c == webImage.c && this.d == webImage.d;
    }

    public int hashCode() {
        return bj.a(this.b, Integer.valueOf(this.c), Integer.valueOf(this.d));
    }

    public String toString() {
        return String.format("Image %dx%d %s", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), this.b.toString()});
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}
