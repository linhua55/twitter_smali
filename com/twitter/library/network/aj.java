package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class aj implements Creator<ServiceMetricData> {
    aj() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ServiceMetricData a(Parcel parcel) {
        return new ServiceMetricData(parcel);
    }

    public ServiceMetricData[] a(int i) {
        return new ServiceMetricData[i];
    }
}
