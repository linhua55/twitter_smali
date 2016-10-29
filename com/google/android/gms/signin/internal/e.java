package com.google.android.gms.signin.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public abstract class e extends Binder implements d {
    public e() {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public static d a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new f(iBinder) : (d) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                a(parcel.readInt() != 0 ? (ConnectionResult) ConnectionResult.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (AuthAccountResult) AuthAccountResult.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                a(parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                b(parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                a(parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (GoogleSignInAccount) GoogleSignInAccount.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                a(parcel.readInt() != 0 ? (SignInResponse) SignInResponse.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.signin.internal.ISignInCallbacks");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
