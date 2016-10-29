package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.BooleanParcelable;

/* compiled from: Twttr */
final class e implements Creator<BooleanParcelable> {
    private e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public BooleanParcelable a(Parcel parcel) {
        return new BooleanParcelable(parcel);
    }

    public BooleanParcelable[] a(int i) {
        return new BooleanParcelable[i];
    }
}
