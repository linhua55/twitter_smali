package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.LinkedHashSetParcelable;

/* compiled from: Twttr */
final class al implements Creator<LinkedHashSetParcelable> {
    private al() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LinkedHashSetParcelable a(Parcel parcel) {
        return new LinkedHashSetParcelable(parcel);
    }

    public LinkedHashSetParcelable[] a(int i) {
        return new LinkedHashSetParcelable[i];
    }
}
