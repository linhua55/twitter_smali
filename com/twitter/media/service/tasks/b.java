package com.twitter.media.service.tasks;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class b implements Creator<ResizeTask> {
    b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ResizeTask a(Parcel parcel) {
        return new ResizeTask(null);
    }

    public ResizeTask[] a(int i) {
        return new ResizeTask[i];
    }
}
