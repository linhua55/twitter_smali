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

public abstract class dx extends Binder implements dw {
    public dx() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    public static dw a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof dw)) ? new dy(iBinder) : (dw) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IBinder iBinder = null;
        String a;
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                j g = g();
                parcel2.writeNoException();
                if (g != null) {
                    iBinder = g.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                List b = b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                a = c();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                di d = d();
                parcel2.writeNoException();
                if (d != null) {
                    iBinder = d.asBinder();
                }
                parcel2.writeStrongBinder(iBinder);
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                a = e();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                a = f();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                Bundle h = h();
                parcel2.writeNoException();
                if (h != null) {
                    parcel2.writeInt(1);
                    h.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                i();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
