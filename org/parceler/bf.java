package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.SparseArrayParcelable;

/* compiled from: Twttr */
final class bf implements Creator<SparseArrayParcelable> {
    private bf() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SparseArrayParcelable a(Parcel parcel) {
        return new SparseArrayParcelable(parcel);
    }

    public SparseArrayParcelable[] a(int i) {
        return new SparseArrayParcelable[i];
    }
}
