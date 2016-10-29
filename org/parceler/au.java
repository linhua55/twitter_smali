package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.LongParcelable;

/* compiled from: Twttr */
final class au implements Creator<LongParcelable> {
    private au() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LongParcelable a(Parcel parcel) {
        return new LongParcelable(parcel);
    }

    public LongParcelable[] a(int i) {
        return new LongParcelable[i];
    }
}
