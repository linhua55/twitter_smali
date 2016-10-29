package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public abstract class eb extends Binder implements ea {
    public eb() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static ea a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof ea)) ? new ec(iBinder) : (ea) queryLocalInterface;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String a;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                a = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                di b = b(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(b != null ? b.asBinder() : null);
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                List a2 = a();
                parcel2.writeNoException();
                parcel2.writeStringList(a2);
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                a = k();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                b();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
