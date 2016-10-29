package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class e implements Creator<OneoffTask> {
    e() {
    }

    public OneoffTask a(Parcel parcel) {
        return new OneoffTask(parcel, null);
    }

    public OneoffTask[] a(int i) {
        return new OneoffTask[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
