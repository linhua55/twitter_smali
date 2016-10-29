package org.parceler;

import android.os.Parcel;
import defpackage.cxz;
import org.parceler.NonParcelRepository.SetParcelable;

/* compiled from: Twttr */
final class bb extends cxz {
    bb() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(SetParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
