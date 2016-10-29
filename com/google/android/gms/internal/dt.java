package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamic.j;
import java.util.List;

public abstract class dt extends Binder implements ds {
    public dt() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    public static ds a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ds)) ? new du(iBinder) : (ds) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IBinder iBinder = null;
        String a;
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                j i3 = i();
                parcel2.writeNoException();
                if (i3 != null) {
                    iBinder = i3.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                List b = b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                a = c();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                di d = d();
                parcel2.writeNoException();
                if (d != null) {
                    iBinder = d.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                a = e();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                double f = f();
                parcel2.writeNoException();
                parcel2.writeDouble(f);
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                a = g();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                a = h();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                Bundle m = m();
                parcel2.writeNoException();
                if (m != null) {
                    parcel2.writeInt(1);
                    m.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                n();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
