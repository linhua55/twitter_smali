package defpackage;

import android.os.Parcel;
import java.util.Collection;
import org.parceler.bz;

/* compiled from: Twttr */
/* renamed from: cxx */
public abstract class cxx<T, C extends Collection<T>> implements bz<Collection<T>, C> {
    public abstract T a(Parcel parcel);

    public abstract void a(T t, Parcel parcel);

    public abstract C b();

    public /* synthetic */ Object c(Parcel parcel) {
        return b(parcel);
    }

    public /* synthetic */ void c(Object obj, Parcel parcel) {
        a((Collection) obj, parcel);
    }

    public void a(Collection<T> collection, Parcel parcel) {
        if (collection == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(collection.size());
        for (T a : collection) {
            a((Object) a, parcel);
        }
    }

    public C b(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == -1) {
            return null;
        }
        C b = b();
        for (int i = 0; i < readInt; i++) {
            b.add(a(parcel));
        }
        return b;
    }
}
