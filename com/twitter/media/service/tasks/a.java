package com.twitter.media.service.tasks;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<CropTask> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CropTask a(Parcel parcel) {
        return new CropTask(null);
    }

    public CropTask[] a(int i) {
        return new CropTask[i];
    }
}
