package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class at extends cye<Long> {
    at() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Long a(Parcel parcel) {
        return Long.valueOf(parcel.readLong());
    }

    public void a(Long l, Parcel parcel) {
        parcel.writeLong(l.longValue());
    }
}
