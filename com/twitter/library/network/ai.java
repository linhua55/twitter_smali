package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class ai implements Creator<ServiceEvaluatorData> {
    ai() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ServiceEvaluatorData a(Parcel parcel) {
        return new ServiceEvaluatorData(parcel);
    }

    public ServiceEvaluatorData[] a(int i) {
        return new ServiceEvaluatorData[i];
    }
}
