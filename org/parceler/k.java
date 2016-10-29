package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class k extends cye<Byte> {
    k() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Byte a(Parcel parcel) {
        return Byte.valueOf(parcel.readByte());
    }

    public void a(Byte b, Parcel parcel) {
        parcel.writeByte(b.byteValue());
    }
}
