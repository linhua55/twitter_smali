package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.TreeSetParcelable;

/* compiled from: Twttr */
final class bq implements Creator<TreeSetParcelable> {
    private bq() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TreeSetParcelable a(Parcel parcel) {
        return new TreeSetParcelable(parcel);
    }

    public TreeSetParcelable[] a(int i) {
        return new TreeSetParcelable[i];
    }
}
