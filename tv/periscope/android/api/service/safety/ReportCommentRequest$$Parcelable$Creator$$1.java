package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.HashMap;

/* compiled from: Twttr */
public final class ReportCommentRequest$$Parcelable$Creator$$1 implements Creator<ReportCommentRequest$$Parcelable> {
    public ReportCommentRequest$$Parcelable createFromParcel(Parcel parcel) {
        return new ReportCommentRequest$$Parcelable(ReportCommentRequest$$Parcelable.read(parcel, new HashMap()));
    }

    public ReportCommentRequest$$Parcelable[] newArray(int i) {
        return new ReportCommentRequest$$Parcelable[i];
    }
}
