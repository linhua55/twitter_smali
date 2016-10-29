package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.CollectionParcelable;

/* compiled from: Twttr */
final class t implements Creator<CollectionParcelable> {
    private t() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CollectionParcelable a(Parcel parcel) {
        return new CollectionParcelable(parcel);
    }

    public CollectionParcelable[] a(int i) {
        return new CollectionParcelable[i];
    }
}
