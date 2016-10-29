package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.MapParcelable;

/* compiled from: Twttr */
final class ax implements Creator<MapParcelable> {
    private ax() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public MapParcelable a(Parcel parcel) {
        return new MapParcelable(parcel);
    }

    public MapParcelable[] a(int i) {
        return new MapParcelable[i];
    }
}
