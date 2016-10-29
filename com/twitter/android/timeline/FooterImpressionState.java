package com.twitter.android.timeline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.ar;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class FooterImpressionState implements Parcelable {
    public static final Creator<FooterImpressionState> CREATOR;
    public final Set<Long> a;

    static {
        CREATOR = new m();
    }

    public FooterImpressionState(Set<Long> set) {
        this.a = ar.a(set);
    }

    public FooterImpressionState(Parcel parcel) {
        this((Set) ObjectUtils.a(e.a(parcel.readSerializable())));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(new HashSet(this.a));
    }
}
