package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: lv */
class lv implements lt {
    private IBinder a;

    lv(IBinder iBinder) {
        this.a = iBinder;
    }

    public void a() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
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
