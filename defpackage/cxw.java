package defpackage;

import android.os.Parcel;
import org.parceler.bs;

/* compiled from: Twttr */
/* renamed from: cxw */
public class cxw implements bs<char[]> {
    public /* synthetic */ Object c(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ void c(Object obj, Parcel parcel) {
        a((char[]) obj, parcel);
    }

    public void a(char[] cArr, Parcel parcel) {
        if (cArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(cArr.length);
        parcel.writeCharArray(cArr);
    }

    public char[] a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt == -1) {
            return null;
        }
        char[] cArr = new char[readInt];
        parcel.readCharArray(cArr);
        return cArr;
    }
}
