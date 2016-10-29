package org.parceler;

import android.os.Parcel;
import defpackage.cxu;
import org.parceler.NonParcelRepository.ListParcelable;

/* compiled from: Twttr */
final class aq extends cxu {
    aq() {
    }

    public Object a(Parcel parcel) {
        return bu.a(parcel.readParcelable(ListParcelable.class.getClassLoader()));
    }

    public void a(Object obj, Parcel parcel) {
        parcel.writeParcelable(bu.a(obj), 0);
    }
}
