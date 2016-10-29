package org.parceler;

import android.os.Parcel;
import defpackage.cyc;
import org.parceler.NonParcelRepository.LinkedListParcelable;

/* compiled from: Twttr */
final class an extends cyc {
    an() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(LinkedListParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
