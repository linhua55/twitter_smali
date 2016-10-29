package tv.periscope.android.api.service.safety;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.parceler.ParcelerRuntimeException;
import org.parceler.bt;

/* compiled from: Twttr */
public class ActiveJurorRequest$$Parcelable implements Parcelable, bt<ActiveJurorRequest> {
    public static final ActiveJurorRequest$$Parcelable$Creator$$0 CREATOR;
    private ActiveJurorRequest activeJurorRequest$$0;

    static {
        CREATOR = new ActiveJurorRequest$$Parcelable$Creator$$0();
    }

    public ActiveJurorRequest$$Parcelable(ActiveJurorRequest activeJurorRequest) {
        this.activeJurorRequest$$0 = activeJurorRequest;
    }

    public void writeToParcel(Parcel parcel, int i) {
        write(this.activeJurorRequest$$0, parcel, i, new HashSet());
    }

    public static void write(ActiveJurorRequest activeJurorRequest, Parcel parcel, int i, Set<Integer> set) {
        int identityHashCode = System.identityHashCode(activeJurorRequest);
        parcel.writeInt(identityHashCode);
        if (!set.contains(Integer.valueOf(identityHashCode))) {
            set.add(Integer.valueOf(identityHashCode));
            if (activeJurorRequest == null) {
                parcel.writeInt(-1);
                return;
            }
            parcel.writeInt(1);
            parcel.writeString(activeJurorRequest.messageUUID);
            parcel.writeString(activeJurorRequest.cookie);
        }
    }

    public int describeContents() {
        return 0;
    }

    public ActiveJurorRequest getParcel() {
        return this.activeJurorRequest$$0;
    }

    public static ActiveJurorRequest read(Parcel parcel, Map<Integer, Object> map) {
        int readInt = parcel.readInt();
        ActiveJurorRequest activeJurorRequest;
        if (map.containsKey(Integer.valueOf(readInt))) {
            activeJurorRequest = (ActiveJurorRequest) map.get(Integer.valueOf(readInt));
            if (activeJurorRequest != null || readInt == 0) {
                return activeJurorRequest;
            }
            throw new ParcelerRuntimeException("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
        } else if (parcel.readInt() == -1) {
            map.put(Integer.valueOf(readInt), null);
            return null;
        } else {
            map.put(Integer.valueOf(readInt), null);
            activeJurorRequest = new ActiveJurorRequest();
            map.put(Integer.valueOf(readInt), activeJurorRequest);
            activeJurorRequest.messageUUID = parcel.readString();
            activeJurorRequest.cookie = parcel.readString();
            return activeJurorRequest;
        }
    }
}
