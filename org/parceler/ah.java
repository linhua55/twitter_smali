package org.parceler;

import android.os.Parcel;
import defpackage.cya;
import org.parceler.NonParcelRepository.MapParcelable;

/* compiled from: Twttr */
final class ah extends cya {
    ah() {
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }

    public void b(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(MapParcelable.class.getClassLoader()));
    }

    public Object b(Parcel parcel) {
        return bu.a(parcel.readParcelable(MapParcelable.class.getClassLoader()));
    }
}
