package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a implements Creator<BinderWrapper> {
    a() {
    }

    public BinderWrapper a(Parcel parcel) {
        return new BinderWrapper(null);
    }

    public BinderWrapper[] a(int i) {
        return new BinderWrapper[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
