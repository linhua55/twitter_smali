package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.LinkedListParcelable;

/* compiled from: Twttr */
final class ao implements Creator<LinkedListParcelable> {
    private ao() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public LinkedListParcelable a(Parcel parcel) {
        return new LinkedListParcelable(parcel);
    }

    public LinkedListParcelable[] a(int i) {
        return new LinkedListParcelable[i];
    }
}
