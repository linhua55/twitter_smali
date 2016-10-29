package defpackage;

import android.os.Parcel;
import org.parceler.bs;

/* compiled from: Twttr */
/* renamed from: cxv */
public class cxv implements bs<boolean[]> {
    public /* synthetic */ Object c(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ void c(Object obj, Parcel parcel) {
        a((boolean[]) obj, parcel);
    }

    public void a(boolean[] zArr, Parcel parcel) {
        if (zArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(zArr.length);
        parcel.writeBooleanArray(zArr);
    }

    public boolean[] a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == -1) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        parcel.readBooleanArray(zArr);
        return zArr;
    }
}
