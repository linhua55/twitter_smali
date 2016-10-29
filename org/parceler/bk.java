package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.StringParcelable;

/* compiled from: Twttr */
final class bk implements Creator<StringParcelable> {
    private bk() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public StringParcelable a(Parcel parcel) {
        return new StringParcelable(null);
    }

    public StringParcelable[] a(int i) {
        return new StringParcelable[i];
    }
}
