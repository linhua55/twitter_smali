package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.en;

public abstract class am extends Binder implements al {
    public am() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    public static al a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof al)) ? new an(iBinder) : (al) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        NativeAdOptionsParcel nativeAdOptionsParcel = null;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                IBinder asBinder;
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                ai a = a();
                parcel2.writeNoException();
                if (a != null) {
                    asBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(asBinder);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                a(ag.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                a(ee.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                a(eh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                a(parcel.readString(), en.a(parcel.readStrongBinder()), ek.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                if (parcel.readInt() != 0) {
                    nativeAdOptionsParcel = NativeAdOptionsParcel.CREATOR.a(parcel);
                }
                a(nativeAdOptionsParcel);
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                a(bb.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
