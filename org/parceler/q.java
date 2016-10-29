package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.CharacterParcelable;

/* compiled from: Twttr */
final class q implements Creator<CharacterParcelable> {
    private q() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CharacterParcelable a(Parcel parcel) {
        return new CharacterParcelable(parcel);
    }

    public CharacterParcelable[] a(int i) {
        return new CharacterParcelable[i];
    }
}
