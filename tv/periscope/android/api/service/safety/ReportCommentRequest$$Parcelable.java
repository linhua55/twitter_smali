package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.parceler.ParcelerRuntimeException;
import org.parceler.bt;

/* compiled from: Twttr */
public class ReportCommentRequest$$Parcelable implements Parcelable, bt<ReportCommentRequest> {
    public static final ReportCommentRequest$$Parcelable$Creator$$1 CREATOR;
    private ReportCommentRequest reportCommentRequest$$0;

    static {
        CREATOR = new ReportCommentRequest$$Parcelable$Creator$$1();
    }

    public ReportCommentRequest$$Parcelable(ReportCommentRequest reportCommentRequest) {
        this.reportCommentRequest$$0 = reportCommentRequest;
    }

    public void writeToParcel(Parcel parcel, int i) {
        write(this.reportCommentRequest$$0, parcel, i, new HashSet());
    }

    public static void write(ReportCommentRequest reportCommentRequest, Parcel parcel, int i, Set<Integer> set) {
        int identityHashCode = System.identityHashCode(reportCommentRequest);
        parcel.writeInt(identityHashCode);
        if (!set.contains(Integer.valueOf(identityHashCode))) {
            set.add(Integer.valueOf(identityHashCode));
            if (reportCommentRequest == null) {
                parcel.writeInt(-1);
                return;
            }
            parcel.writeInt(1);
            parcel.writeString(reportCommentRequest.message);
            parcel.writeInt(reportCommentRequest.reportType);
            parcel.writeString(reportCommentRequest.broadcastID);
            parcel.writeString(reportCommentRequest.cookie);
        }
    }

    public int describeContents() {
        return 0;
    }

    public ReportCommentRequest getParcel() {
        return this.reportCommentRequest$$0;
    }

    public static ReportCommentRequest read(Parcel parcel, Map<Integer, Object> map) {
        int readInt = parcel.readInt();
        ReportCommentRequest reportCommentRequest;
        if (map.containsKey(Integer.valueOf(readInt))) {
            reportCommentRequest = (ReportCommentRequest) map.get(Integer.valueOf(readInt));
            if (reportCommentRequest != null || readInt == 0) {
                return reportCommentRequest;
            }
            throw new ParcelerRuntimeException("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
        } else if (parcel.readInt() == -1) {
            map.put(Integer.valueOf(readInt), null);
            return null;
        } else {
            map.put(Integer.valueOf(readInt), null);
            reportCommentRequest = new ReportCommentRequest();
            map.put(Integer.valueOf(readInt), reportCommentRequest);
            reportCommentRequest.message = parcel.readString();
            reportCommentRequest.reportType = parcel.readInt();
            reportCommentRequest.broadcastID = parcel.readString();
            reportCommentRequest.cookie = parcel.readString();
            return reportCommentRequest;
        }
    }
}
