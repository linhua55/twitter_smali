package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class h extends cye<byte[]> {
    h() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public byte[] a(Parcel parcel) {
        return parcel.createByteArray();
    }

    public void a(byte[] bArr, Parcel parcel) {
        parcel.writeByteArray(bArr);
    }
}
