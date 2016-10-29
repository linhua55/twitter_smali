package defpackage;

import android.os.Parcel;
import android.util.SparseArray;
import org.parceler.bs;

/* compiled from: Twttr */
/* renamed from: cyf */
public abstract class cyf<T> implements bs<SparseArray<T>> {
    public abstract T a(Parcel parcel);

    public abstract void a(T t, Parcel parcel);

    public /* synthetic */ Object c(Parcel parcel) {
        return b(parcel);
    }

    public /* synthetic */ void c(Object obj, Parcel parcel) {
        a((SparseArray) obj, parcel);
    }

    public void a(SparseArray<T> sparseArray, Parcel parcel) {
        if (sparseArray == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            parcel.writeInt(sparseArray.keyAt(i));
            a(sparseArray.valueAt(i), parcel);
        }
    }

    public SparseArray<T> b(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        SparseArray<T> sparseArray = new SparseArray(readInt);
        for (int i = 0; i < readInt; i++) {
            sparseArray.append(parcel.readInt(), a(parcel));
        }
        return sparseArray;
    }
}
