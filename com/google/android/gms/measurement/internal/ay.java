package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.twitter.android.mx;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

public abstract class ay extends Binder implements ax {
    public ay() {
        attachInterface(this, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    public static ax a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ax)) ? new az(iBinder) : (ax) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AppMetadata appMetadata = null;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                EventParcel a = parcel.readInt() != 0 ? EventParcel.CREATOR.a(parcel) : null;
                if (parcel.readInt() != 0) {
                    appMetadata = AppMetadata.CREATOR.a(parcel);
                }
                a(a, appMetadata);
                parcel2.writeNoException();
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                UserAttributeParcel a2 = parcel.readInt() != 0 ? UserAttributeParcel.CREATOR.a(parcel) : null;
                if (parcel.readInt() != 0) {
                    appMetadata = AppMetadata.CREATOR.a(parcel);
                }
                a(a2, appMetadata);
                parcel2.writeNoException();
                return true;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                if (parcel.readInt() != 0) {
                    appMetadata = AppMetadata.CREATOR.a(parcel);
                }
                a(appMetadata);
                parcel2.writeNoException();
                return true;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                EventParcel a3;
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                if (parcel.readInt() != 0) {
                    a3 = EventParcel.CREATOR.a(parcel);
                }
                a(a3, parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                if (parcel.readInt() != 0) {
                    appMetadata = AppMetadata.CREATOR.a(parcel);
                }
                b(appMetadata);
                parcel2.writeNoException();
                return true;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                parcel.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                if (parcel.readInt() != 0) {
                    appMetadata = AppMetadata.CREATOR.a(parcel);
                }
                List a4 = a(appMetadata, parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.measurement.internal.IMeasurementService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
