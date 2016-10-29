package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public abstract class dc extends Binder implements db {
    public dc() {
        attachInterface(this, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    public static db a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof db)) ? new dd(iBinder) : (db) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String a;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                a = b();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                c();
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                d();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
