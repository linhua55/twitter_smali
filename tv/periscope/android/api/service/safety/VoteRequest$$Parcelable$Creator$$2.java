package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.HashMap;

/* compiled from: Twttr */
public final class VoteRequest$$Parcelable$Creator$$2 implements Creator<VoteRequest$$Parcelable> {
    public VoteRequest$$Parcelable createFromParcel(Parcel parcel) {
        return new VoteRequest$$Parcelable(VoteRequest$$Parcelable.read(parcel, new HashMap()));
    }

    public VoteRequest$$Parcelable[] newArray(int i) {
        return new VoteRequest$$Parcelable[i];
    }
}
