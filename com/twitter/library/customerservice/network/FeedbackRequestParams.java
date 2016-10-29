package com.twitter.library.customerservice.network;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.serialization.m;
import defpackage.cly;

/* compiled from: Twttr */
public class FeedbackRequestParams implements Parcelable {
    public static final Creator<FeedbackRequestParams> CREATOR;
    private final long a;
    private final long b;
    private final String c;
    private final cly d;

    static {
        CREATOR = new b();
    }

    public FeedbackRequestParams(long j, long j2, String str, cly cly) {
        this.a = j;
        this.b = j2;
        this.c = str;
        this.d = cly;
    }

    private FeedbackRequestParams(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readString();
        this.d = (cly) m.a(parcel.createByteArray(), cly.a);
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public cly d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeString(this.c);
        parcel.writeByteArray(m.a(this.d, cly.a));
    }

    public FeedbackRequestParams a(int i) {
        this.d.a("score", String.valueOf(i));
        return this;
    }

    public FeedbackRequestParams a(String str) {
        this.d.a("text_submitted", str);
        return this;
    }

    public FeedbackRequestParams e() {
        this.d.a("dismissed", "true");
        return this;
    }
}
