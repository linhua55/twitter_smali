package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.ParcelableParcelable;

/* compiled from: Twttr */
final class az implements Creator<ParcelableParcelable> {
    private az() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ParcelableParcelable a(Parcel parcel) {
        return new ParcelableParcelable(null);
    }

    public ParcelableParcelable[] a(int i) {
        return new ParcelableParcelable[i];
    }
}
