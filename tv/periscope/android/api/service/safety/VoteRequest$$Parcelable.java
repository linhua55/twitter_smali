package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.parceler.ParcelerRuntimeException;
import org.parceler.bt;

/* compiled from: Twttr */
public class VoteRequest$$Parcelable implements Parcelable, bt<VoteRequest> {
    public static final VoteRequest$$Parcelable$Creator$$2 CREATOR;
    private VoteRequest voteRequest$$0;

    static {
        CREATOR = new VoteRequest$$Parcelable$Creator$$2();
    }

    public VoteRequest$$Parcelable(VoteRequest voteRequest) {
        this.voteRequest$$0 = voteRequest;
    }

    public void writeToParcel(Parcel parcel, int i) {
        write(this.voteRequest$$0, parcel, i, new HashSet());
    }

    public static void write(VoteRequest voteRequest, Parcel parcel, int i, Set<Integer> set) {
        int identityHashCode = System.identityHashCode(voteRequest);
        parcel.writeInt(identityHashCode);
        if (!set.contains(Integer.valueOf(identityHashCode))) {
            set.add(Integer.valueOf(identityHashCode));
            if (voteRequest == null) {
                parcel.writeInt(-1);
                return;
            }
            parcel.writeInt(1);
            parcel.writeInt(voteRequest.vote);
            parcel.writeString(voteRequest.messageUUID);
            parcel.writeString(voteRequest.cookie);
        }
    }

    public int describeContents() {
        return 0;
    }

    public VoteRequest getParcel() {
        return this.voteRequest$$0;
    }

    public static VoteRequest read(Parcel parcel, Map<Integer, Object> map) {
        int readInt = parcel.readInt();
        VoteRequest voteRequest;
        if (map.containsKey(Integer.valueOf(readInt))) {
            voteRequest = (VoteRequest) map.get(Integer.valueOf(readInt));
            if (voteRequest != null || readInt == 0) {
                return voteRequest;
            }
            throw new ParcelerRuntimeException("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
        } else if (parcel.readInt() == -1) {
            map.put(Integer.valueOf(readInt), null);
            return null;
        } else {
            map.put(Integer.valueOf(readInt), null);
            voteRequest = new VoteRequest();
            map.put(Integer.valueOf(readInt), voteRequest);
            voteRequest.vote = parcel.readInt();
            voteRequest.messageUUID = parcel.readString();
            voteRequest.cookie = parcel.readString();
            return voteRequest;
        }
    }
}
