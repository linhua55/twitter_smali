package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d implements Creator<MessengerCompat> {
    d() {
    }

    public MessengerCompat a(Parcel parcel) {
        IBinder readStrongBinder = parcel.readStrongBinder();
        return readStrongBinder != null ? new MessengerCompat(readStrongBinder) : null;
    }

    public MessengerCompat[] a(int i) {
        return new MessengerCompat[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
