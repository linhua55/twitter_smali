package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: lg */
class lg implements le {
    private IBinder a;

    lg(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(ny nyVar) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
            obtain.writeStrongBinder(nyVar != null ? nyVar.asBinder() : null);
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
