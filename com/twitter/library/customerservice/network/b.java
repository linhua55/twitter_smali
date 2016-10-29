package com.twitter.library.customerservice.network;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<FeedbackRequestParams> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FeedbackRequestParams a(Parcel parcel) {
        return new FeedbackRequestParams(parcel, null);
    }

    public FeedbackRequestParams[] a(int i) {
        return new FeedbackRequestParams[i];
    }
}
