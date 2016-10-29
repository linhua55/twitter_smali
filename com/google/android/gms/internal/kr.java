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
import com.google.android.gms.dynamic.k;
import defpackage.bdd;
import java.util.List;

public abstract class kr extends Binder implements kq {
    public kr() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public static kq a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof kq)) ? new ks(iBinder) : (kq) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        int i3 = 0;
        String a;
        boolean j;
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                List b = b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a = c();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                di d = d();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(d != null ? d.asBinder() : null);
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a = e();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                double f = f();
                parcel2.writeNoException();
                parcel2.writeDouble(f);
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a = g();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a = h();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                i();
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                a(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                b(k.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                j = j();
                parcel2.writeNoException();
                if (j) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                j = k();
                parcel2.writeNoException();
                if (j) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case bdd.TwitterButton_strokeWidth /*15*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                Bundle l = l();
                parcel2.writeNoException();
                if (l != null) {
                    parcel2.writeInt(1);
                    l.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
