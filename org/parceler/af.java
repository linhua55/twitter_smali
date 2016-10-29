package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.IntegerParcelable;

/* compiled from: Twttr */
final class af implements Creator<IntegerParcelable> {
    private af() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public IntegerParcelable a(Parcel parcel) {
        return new IntegerParcelable(parcel);
    }

    public IntegerParcelable[] a(int i) {
        return new IntegerParcelable[i];
    }
}
