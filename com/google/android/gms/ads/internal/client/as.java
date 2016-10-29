package com.google.android.gms.ads.internal.client;

import android.os.Binder;
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
import com.google.android.gms.ads.internal.reward.client.h;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.df;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.nb;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;

public abstract class as extends Binder implements ar {
    public as() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static ar a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ar)) ? new at(iBinder) : (ar) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AdSizeParcel adSizeParcel = null;
        int i3 = 0;
        boolean c;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                IBinder asBinder;
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                j a = a();
                parcel2.writeNoException();
                if (a != null) {
                    asBinder = a.asBinder();
                }
                parcel2.writeStrongBinder(asBinder);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                b();
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                c = c();
                parcel2.writeNoException();
                parcel2.writeInt(c ? 1 : 0);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                AdRequestParcel a2;
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                if (parcel.readInt() != 0) {
                    a2 = AdRequestParcel.CREATOR.a(parcel);
                }
                c = a(a2);
                parcel2.writeNoException();
                if (c) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                d();
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                d_();
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(ag.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(ay.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                f();
                parcel2.writeNoException();
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                g();
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                h();
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                adSizeParcel = i();
                parcel2.writeNoException();
                if (adSizeParcel != null) {
                    parcel2.writeInt(1);
                    adSizeParcel.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                if (parcel.readInt() != 0) {
                    adSizeParcel = AdSizeParcel.CREATOR.a(parcel);
                }
                a(adSizeParcel);
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(mp.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_strokeWidth /*15*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(nb.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_knockout /*18*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                String j = j();
                parcel2.writeNoException();
                parcel2.writeString(j);
                return true;
            case bdd.TwitterButton_iconLayout /*19*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(df.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(ad.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaTopMargin /*21*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(bb.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaBottomMargin /*22*/:
                boolean z;
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaDivider /*23*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                c = k();
                parcel2.writeNoException();
                if (c) {
                    i3 = 1;
                }
                parcel2.writeInt(i3);
                return true;
            case bdd.TweetView_autoLink /*24*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(h.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_linkSelectedColor /*25*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManager");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
