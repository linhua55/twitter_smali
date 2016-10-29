package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

/* renamed from: oj */
class oj implements oh {
    private IBinder a;

    oj(IBinder iBinder) {
        this.a = iBinder;
    }

    public Tile a(int i, int i2, int i3) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeInt(i3);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            Tile a = obtain2.readInt() != 0 ? Tile.CREATOR.a(obtain2) : null;
            obtain2.recycle();
            obtain.recycle();
            return a;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public IBinder asBinder() {
        return this.a;
    }
}
