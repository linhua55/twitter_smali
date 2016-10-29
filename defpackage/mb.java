package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: mb */
class mb implements lz {
    private IBinder a;

    mb(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(ja jaVar) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapReadyCallback");
            obtain.writeStrongBinder(jaVar != null ? jaVar.asBinder() : null);
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
