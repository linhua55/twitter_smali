package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class ae extends cye<Integer> {
    ae() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Integer a(Parcel parcel) {
        return Integer.valueOf(parcel.readInt());
    }

    public void a(Integer num, Parcel parcel) {
        parcel.writeInt(num.intValue());
    }
}
