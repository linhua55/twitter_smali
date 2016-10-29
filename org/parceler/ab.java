package org.parceler;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class ab extends cye<IBinder> {
    ab() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public IBinder a(Parcel parcel) {
        return parcel.readStrongBinder();
    }

    public void a(IBinder iBinder, Parcel parcel) {
        parcel.writeStrongBinder(iBinder);
    }
}
