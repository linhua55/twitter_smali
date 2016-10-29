package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.TreeMapParcelable;

/* compiled from: Twttr */
final class bn implements Creator<TreeMapParcelable> {
    private bn() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public TreeMapParcelable a(Parcel parcel) {
        return new TreeMapParcelable(parcel);
    }

    public TreeMapParcelable[] a(int i) {
        return new TreeMapParcelable[i];
    }
}
