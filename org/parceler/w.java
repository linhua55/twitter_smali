package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.DoubleParcelable;

/* compiled from: Twttr */
final class w implements Creator<DoubleParcelable> {
    private w() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DoubleParcelable a(Parcel parcel) {
        return new DoubleParcelable(parcel);
    }

    public DoubleParcelable[] a(int i) {
        return new DoubleParcelable[i];
    }
}
