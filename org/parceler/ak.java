package org.parceler;

import android.os.Parcel;
import defpackage.cyb;
import org.parceler.NonParcelRepository.LinkedHashSetParcelable;

/* compiled from: Twttr */
final class ak extends cyb {
    ak() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(LinkedHashSetParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
