package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.FloatParcelable;

/* compiled from: Twttr */
final class z implements Creator<FloatParcelable> {
    private z() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public FloatParcelable a(Parcel parcel) {
        return new FloatParcelable(parcel);
    }

    public FloatParcelable[] a(int i) {
        return new FloatParcelable[i];
    }
}
