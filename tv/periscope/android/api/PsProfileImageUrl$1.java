package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class PsProfileImageUrl$1 implements Creator {
    PsProfileImageUrl$1() {
    }

    public PsProfileImageUrl createFromParcel(Parcel parcel) {
        return new PsProfileImageUrl(parcel);
    }

    public PsProfileImageUrl[] newArray(int i) {
        return new PsProfileImageUrl[i];
    }
}
