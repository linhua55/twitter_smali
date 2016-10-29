package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.SparseBooleanArrayParcelable;

/* compiled from: Twttr */
final class bi implements Creator<SparseBooleanArrayParcelable> {
    private bi() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SparseBooleanArrayParcelable a(Parcel parcel) {
        return new SparseBooleanArrayParcelable(parcel);
    }

    public SparseBooleanArrayParcelable[] a(int i) {
        return new SparseBooleanArrayParcelable[i];
    }
}
