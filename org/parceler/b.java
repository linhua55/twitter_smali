package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.BooleanArrayParcelable;

/* compiled from: Twttr */
final class b implements Creator<BooleanArrayParcelable> {
    private b() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public BooleanArrayParcelable a(Parcel parcel) {
        return new BooleanArrayParcelable(parcel);
    }

    public BooleanArrayParcelable[] a(int i) {
        return new BooleanArrayParcelable[i];
    }
}
