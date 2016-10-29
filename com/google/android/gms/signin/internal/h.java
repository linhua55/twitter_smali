package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.as;
import com.google.android.gms.common.internal.at;
import com.google.android.gms.common.internal.bd;

public abstract class h extends Binder implements g {
    public static g a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof g)) ? new i(iBinder) : (g) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z = false;
        SignInRequest signInRequest = null;
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                AuthAccountRequest authAccountRequest;
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    authAccountRequest = (AuthAccountRequest) AuthAccountRequest.CREATOR.createFromParcel(parcel);
                }
                a(authAccountRequest, e.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                CheckServerAuthResult checkServerAuthResult;
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    checkServerAuthResult = (CheckServerAuthResult) CheckServerAuthResult.CREATOR.createFromParcel(parcel);
                }
                a(checkServerAuthResult);
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                a(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                ResolveAccountRequest resolveAccountRequest;
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    resolveAccountRequest = (ResolveAccountRequest) ResolveAccountRequest.CREATOR.createFromParcel(parcel);
                }
                a(resolveAccountRequest, bd.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                Account account;
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                int readInt = parcel.readInt();
                if (parcel.readInt() != 0) {
                    account = (Account) Account.CREATOR.createFromParcel(parcel);
                }
                a(readInt, account, e.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                as a = at.a(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(a, readInt2, z);
                parcel2.writeNoException();
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                RecordConsentRequest recordConsentRequest;
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    recordConsentRequest = (RecordConsentRequest) RecordConsentRequest.CREATOR.createFromParcel(parcel);
                }
                a(recordConsentRequest, e.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                a(e.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    signInRequest = (SignInRequest) SignInRequest.CREATOR.createFromParcel(parcel);
                }
                a(signInRequest, e.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
