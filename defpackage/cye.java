package defpackage;

import android.os.Parcel;
import org.parceler.bs;

/* compiled from: Twttr */
/* renamed from: cye */
public abstract class cye<T> implements bs<T> {
    public abstract void a(T t, Parcel parcel);

    public abstract T b(Parcel parcel);

    public void c(T t, Parcel parcel) {
        if (t == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(1);
        a(t, parcel);
    }

    public T c(Parcel parcel) {
        if (parcel.readInt() == -1) {
            return null;
        }
        return b(parcel);
    }
}
