package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ab;
import defpackage.cni;
import java.util.List;

/* compiled from: Twttr */
public class TwitterSearchQuery implements Parcelable {
    public static final Creator<TwitterSearchQuery> CREATOR;
    public final String a;
    public final String b;
    public final Float c;
    public final Float d;
    public final Float e;
    public final String f;
    public final long g;
    public long h;
    public final List<TwitterUser> i;
    public final cni j;
    public final boolean k;
    public final String l;

    static {
        CREATOR = new g();
    }

    public TwitterSearchQuery(String str, String str2, long j, long j2, Float f, Float f2, Float f3, String str3, List<TwitterUser> list, cni cni, boolean z, String str4) {
        this.a = str;
        this.b = str2;
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = str3;
        this.h = j;
        this.g = j2;
        this.i = list;
        this.j = cni;
        this.k = z;
        this.l = str4;
    }

    public TwitterSearchQuery(String str, String str2, long j, long j2, Float f, Float f2, Float f3, String str3, List<TwitterUser> list, cni cni) {
        this(str, str2, j, j2, f, f2, f3, str3, list, cni, false, null);
    }

    public TwitterSearchQuery(String str, String str2, long j, long j2, cni cni) {
        this(str, str2, j, j2, null, null, null, null, null, cni, false, null);
    }

    public TwitterSearchQuery(String str, String str2, long j, long j2, cni cni, String str3, boolean z, String str4) {
        this(str, str2, j, j2, null, null, null, str3, null, cni, z, str4);
    }

    public TwitterSearchQuery(String str, String str2, long j, List<TwitterUser> list) {
        this(str, str2, 0, j, null, null, null, null, list, null, false, null);
    }

    public TwitterSearchQuery(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = Float.valueOf(parcel.readFloat());
        this.d = Float.valueOf(parcel.readFloat());
        this.e = Float.valueOf(parcel.readFloat());
        this.f = parcel.readString();
        this.h = parcel.readLong();
        this.g = parcel.readLong();
        this.i = parcel.createTypedArrayList(TwitterUser.CREATOR);
        this.j = (cni) ab.a(parcel, cni.a);
        this.k = parcel.readInt() == 1;
        this.l = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeFloat(this.c.floatValue());
        parcel.writeFloat(this.d.floatValue());
        parcel.writeFloat(this.e.floatValue());
        parcel.writeString(this.f);
        parcel.writeLong(this.h);
        parcel.writeLong(this.g);
        parcel.writeTypedList(this.i);
        ab.a(parcel, this.j, cni.a);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeString(this.l);
    }
}
