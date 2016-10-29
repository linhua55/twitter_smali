package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: kg */
class kg implements ke {
    private IBinder a;

    kg(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(jp jpVar) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
            obtain.writeStrongBinder(jpVar != null ? jpVar.asBinder() : null);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
