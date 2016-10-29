package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.SetParcelable;

/* compiled from: Twttr */
final class bc implements Creator<SetParcelable> {
    private bc() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SetParcelable a(Parcel parcel) {
        return new SetParcelable(parcel);
    }

    public SetParcelable[] a(int i) {
        return new SetParcelable[i];
    }
}
