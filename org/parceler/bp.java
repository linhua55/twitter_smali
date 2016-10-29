package org.parceler;

import android.os.Parcel;
import defpackage.cyh;
import org.parceler.NonParcelRepository.TreeSetParcelable;

/* compiled from: Twttr */
final class bp extends cyh {
    bp() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(TreeSetParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
