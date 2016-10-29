package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class a implements Creator<GInAppPurchaseManagerInfoParcel> {
    static void a(GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, gInAppPurchaseManagerInfoParcel.a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, gInAppPurchaseManagerInfoParcel.b(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, gInAppPurchaseManagerInfoParcel.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, gInAppPurchaseManagerInfoParcel.d(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, gInAppPurchaseManagerInfoParcel.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public GInAppPurchaseManagerInfoParcel a(Parcel parcel) {
        IBinder iBinder = null;
        int b = zza.b(parcel);
        int i = 0;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    iBinder4 = zza.p(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    iBinder3 = zza.p(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    iBinder2 = zza.p(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    iBinder = zza.p(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GInAppPurchaseManagerInfoParcel(i, iBinder4, iBinder3, iBinder2, iBinder);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GInAppPurchaseManagerInfoParcel[] a(int i) {
        return new GInAppPurchaseManagerInfoParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
