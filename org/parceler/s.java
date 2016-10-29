package org.parceler;

import android.os.Parcel;
import defpackage.cxu;
import org.parceler.NonParcelRepository.CollectionParcelable;

/* compiled from: Twttr */
final class s extends cxu {
    s() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(CollectionParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
