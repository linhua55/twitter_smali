package com.twitter.util.math;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<Size> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public Size a(Parcel parcel) {
        return new Size(parcel);
    }

    public Size[] a(int i) {
        return new Size[i];
    }
}
