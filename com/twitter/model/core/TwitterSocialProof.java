package com.twitter.model.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class TwitterSocialProof implements Parcelable {
    public static final Creator<TwitterSocialProof> CREATOR;
    public static final d<TwitterSocialProof, ck> a;
    public final int b;
    public final String c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final String h;
    public final int i;

    static {
        a = new cl(null);
        CREATOR = new cj();
    }

    public TwitterSocialProof(ck ckVar) {
        this.b = ckVar.a;
        this.c = ckVar.e;
        this.d = ckVar.b;
        this.e = ckVar.c;
        this.f = ckVar.d;
        this.g = ckVar.f;
        this.h = ckVar.g;
        this.i = ckVar.h;
    }

    public TwitterSocialProof(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readString();
        this.i = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        parcel.writeInt(this.i);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof TwitterSocialProof) && a((TwitterSocialProof) obj));
    }

    public boolean a(TwitterSocialProof twitterSocialProof) {
        return this == twitterSocialProof || (twitterSocialProof != null && this.b == twitterSocialProof.b && ObjectUtils.a(this.c, twitterSocialProof.c) && this.d == twitterSocialProof.d && this.f == twitterSocialProof.f && this.e == twitterSocialProof.e && this.g == twitterSocialProof.g && ObjectUtils.a(this.h, twitterSocialProof.h) && this.i == twitterSocialProof.i);
    }

    public int hashCode() {
        return (((((((((((((this.b * 31) + ObjectUtils.b(this.c)) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + ObjectUtils.b(this.h)) * 31) + this.i;
    }
}
