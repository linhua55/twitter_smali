package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.HashMap;

/* compiled from: Twttr */
public final class ActiveJurorRequest$$Parcelable$Creator$$0 implements Creator<ActiveJurorRequest$$Parcelable> {
    public ActiveJurorRequest$$Parcelable createFromParcel(Parcel parcel) {
        return new ActiveJurorRequest$$Parcelable(ActiveJurorRequest$$Parcelable.read(parcel, new HashMap()));
    }

    public ActiveJurorRequest$$Parcelable[] newArray(int i) {
        return new ActiveJurorRequest$$Parcelable[i];
    }
}
