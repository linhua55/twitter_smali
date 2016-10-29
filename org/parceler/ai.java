package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.LinkedHashMapParcelable;

/* compiled from: Twttr */
final class ai implements Creator<LinkedHashMapParcelable> {
    private ai() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LinkedHashMapParcelable a(Parcel parcel) {
        return new LinkedHashMapParcelable(parcel);
    }

    public LinkedHashMapParcelable[] a(int i) {
        return new LinkedHashMapParcelable[i];
    }
}
