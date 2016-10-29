package com.twitter.model.card.property;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.a;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ImageSpec implements Parcelable, a {
    public static final Creator<ImageSpec> CREATOR;
    public static final n<ImageSpec> a;
    @Deprecated
    public static transient float b;
    public String c;
    public Vector2F d;
    public String e;

    static {
        a = new b(null);
        CREATOR = new a();
        b = 1.0f;
    }

    public ImageSpec(float f, float f2) {
        this.d = new Vector2F(f, f2);
    }

    public ImageSpec(Parcel parcel) {
        this.c = parcel.readString();
        this.d = (Vector2F) ab.a(parcel, Vector2F.a);
        this.e = parcel.readString();
    }

    public ImageSpec(String str, Vector2F vector2F, String str2) {
        this.c = str;
        this.d = vector2F;
        this.e = str2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        ab.a(parcel, this.d, Vector2F.a);
        parcel.writeString(this.e);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageSpec)) {
            return false;
        }
        ImageSpec imageSpec = (ImageSpec) obj;
        if (ObjectUtils.a(this.d, imageSpec.d) && ObjectUtils.a(this.c, imageSpec.c) && ObjectUtils.a(this.e, imageSpec.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.c) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e);
    }

    public String a() {
        return this.e;
    }
}
