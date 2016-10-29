package com.twitter.android.timeline;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<FooterImpressionState> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FooterImpressionState a(Parcel parcel) {
        return new FooterImpressionState(parcel);
    }

    public FooterImpressionState[] a(int i) {
        return new FooterImpressionState[i];
    }
}
