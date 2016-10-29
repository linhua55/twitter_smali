package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.ByteArrayParcelable;

/* compiled from: Twttr */
final class i implements Creator<ByteArrayParcelable> {
    private i() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ByteArrayParcelable a(Parcel parcel) {
        return new ByteArrayParcelable(parcel);
    }

    public ByteArrayParcelable[] a(int i) {
        return new ByteArrayParcelable[i];
    }
}
