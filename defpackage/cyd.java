package defpackage;

import android.os.Parcel;
import java.util.Map;
import java.util.Map.Entry;
import org.parceler.bz;

/* compiled from: Twttr */
/* renamed from: cyd */
public abstract class cyd<K, V, M extends Map<K, V>> implements bz<Map<K, V>, M> {
    public abstract K a(Parcel parcel);

    public abstract void a(K k, Parcel parcel);

    public abstract V b(Parcel parcel);

    public abstract M b();

    public abstract void b(V v, Parcel parcel);

    public /* synthetic */ Object c(Parcel parcel) {
        return d(parcel);
    }

    public /* synthetic */ void c(Object obj, Parcel parcel) {
        a((Map) obj, parcel);
    }

    public void a(Map<K, V> map, Parcel parcel) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Entry entry : map.entrySet()) {
            a(entry.getKey(), parcel);
            b(entry.getValue(), parcel);
        }
    }

    public M d(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == -1) {
            return null;
        }
        M b = b();
        for (int i = 0; i < readInt; i++) {
            b.put(a(parcel), b(parcel));
        }
        return b;
    }
}
