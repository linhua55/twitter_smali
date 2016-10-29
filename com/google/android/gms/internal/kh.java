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
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;

public abstract class kh extends Binder implements kg {
    public kh() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    public static kg a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof kg)) ? new ki(iBinder) : (kg) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AdRequestParcel adRequestParcel = null;
        j a;
        IBinder asBinder;
        Bundle j;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? AdSizeParcel.CREATOR.a(parcel) : null, parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null, parcel.readString(), kk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a = a();
                parcel2.writeNoException();
                if (a != null) {
                    asBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(asBinder);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a = k.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    adRequestParcel = AdRequestParcel.CREATOR.a(parcel);
                }
                a(a, adRequestParcel, parcel.readString(), kk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                b();
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                c();
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? AdSizeParcel.CREATOR.a(parcel) : null, parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null, parcel.readString(), parcel.readString(), kk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null, parcel.readString(), parcel.readString(), kk.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                d();
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                e();
                parcel2.writeNoException();
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null, parcel.readString(), com.google.android.gms.ads.internal.reward.mediation.client.b.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                if (parcel.readInt() != 0) {
                    adRequestParcel = AdRequestParcel.CREATOR.a(parcel);
                }
                a(adRequestParcel, parcel.readString());
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                f();
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                boolean g = g();
                parcel2.writeNoException();
                parcel2.writeInt(g ? 1 : 0);
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                a(k.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? AdRequestParcel.CREATOR.a(parcel) : null, parcel.readString(), parcel.readString(), kk.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? NativeAdOptionsParcel.CREATOR.a(parcel) : null, parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_strokeWidth /*15*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                kq h = h();
                parcel2.writeNoException();
                if (h != null) {
                    asBinder = h.asBinder();
                }
                parcel2.writeStrongBinder(asBinder);
                return true;
            case Atom.LONG_HEADER_SIZE /*16*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                kt i3 = i();
                parcel2.writeNoException();
                if (i3 != null) {
                    asBinder = i3.asBinder();
                }
                parcel2.writeStrongBinder(asBinder);
                return true;
            case bdd.TwitterButton_bounded /*17*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                j = j();
                parcel2.writeNoException();
                if (j != null) {
                    parcel2.writeInt(1);
                    j.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case bdd.TwitterButton_knockout /*18*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                j = k();
                parcel2.writeNoException();
                if (j != null) {
                    parcel2.writeInt(1);
                    j.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case bdd.TwitterButton_iconLayout /*19*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                j = l();
                parcel2.writeNoException();
                if (j != null) {
                    parcel2.writeInt(1);
                    j.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                if (parcel.readInt() != 0) {
                    adRequestParcel = AdRequestParcel.CREATOR.a(parcel);
                }
                a(adRequestParcel, parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
