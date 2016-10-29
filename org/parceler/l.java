package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.ByteParcelable;

/* compiled from: Twttr */
final class l implements Creator<ByteParcelable> {
    private l() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ByteParcelable a(Parcel parcel) {
        return new ByteParcelable(parcel);
    }

    public ByteParcelable[] a(int i) {
        return new ByteParcelable[i];
    }
}
