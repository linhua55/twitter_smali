package com.twitter.model.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class OneFactorEligibleFactor implements Parcelable {
    public static final Creator<OneFactorEligibleFactor> CREATOR;
    public static final n<OneFactorEligibleFactor> a;
    public final FactorType b;
    public final String c;

    /* compiled from: Twttr */
    public enum FactorType {
        SMS,
        EMAIL,
        OTHER
    }

    static {
        a = new c();
        CREATOR = new b();
    }

    public OneFactorEligibleFactor(FactorType factorType, String str) {
        this.b = factorType;
        this.c = str;
    }

    private OneFactorEligibleFactor(Parcel parcel) {
        this.b = FactorType.values()[parcel.readInt()];
        this.c = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b.ordinal());
        parcel.writeString(this.c);
    }

    public int describeContents() {
        return 0;
    }
}
