package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;

/* renamed from: mn */
class mn implements ml {
    private IBinder a;

    mn(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a(j jVar) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMyLocationChangeListener");
            obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
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
