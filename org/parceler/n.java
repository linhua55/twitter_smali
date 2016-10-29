package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.CharArrayParcelable;

/* compiled from: Twttr */
final class n implements Creator<CharArrayParcelable> {
    private n() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CharArrayParcelable a(Parcel parcel) {
        return new CharArrayParcelable(parcel);
    }

    public CharArrayParcelable[] a(int i) {
        return new CharArrayParcelable[i];
    }
}
