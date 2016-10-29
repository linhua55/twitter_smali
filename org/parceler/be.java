package org.parceler;

import android.os.Parcel;
import defpackage.cyf;
import org.parceler.NonParcelRepository.SparseArrayParcelable;

/* compiled from: Twttr */
final class be extends cyf {
    be() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(SparseArrayParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
