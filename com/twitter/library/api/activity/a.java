package com.twitter.library.api.activity;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<ActivityAggregationScribeItem> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ActivityAggregationScribeItem a(Parcel parcel) {
        return new ActivityAggregationScribeItem(parcel);
    }

    public ActivityAggregationScribeItem[] a(int i) {
        return new ActivityAggregationScribeItem[i];
    }
}
