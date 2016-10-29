package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class PsUser$1 implements Creator {
    PsUser$1() {
    }

    public PsUser createFromParcel(Parcel parcel) {
        return new PsUser(parcel);
    }

    public PsUser[] newArray(int i) {
        return new PsUser[i];
    }
}
