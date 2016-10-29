package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.ListParcelable;

/* compiled from: Twttr */
final class ar implements Creator<ListParcelable> {
    private ar() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ListParcelable a(Parcel parcel) {
        return new ListParcelable(parcel);
    }

    public ListParcelable[] a(int i) {
        return new ListParcelable[i];
    }
}
