package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class h implements Creator<NearbyAlertRequest> {
    static void a(NearbyAlertRequest nearbyAlertRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, nearbyAlertRequest.b());
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, nearbyAlertRequest.a());
        a.a(parcel, 2, nearbyAlertRequest.c());
        a.a(parcel, 3, nearbyAlertRequest.d(), i, false);
        a.a(parcel, 4, nearbyAlertRequest.e(), i, false);
        a.a(parcel, 5, nearbyAlertRequest.f());
        a.a(parcel, 6, nearbyAlertRequest.g());
        a.a(parcel, 7, nearbyAlertRequest.h());
        a.a(parcel, a);
    }

    public NearbyAlertRequest a(Parcel parcel) {
        NearbyAlertFilter nearbyAlertFilter = null;
        int i = 0;
        int b = zza.b(parcel);
        int i2 = -1;
        int i3 = 0;
        boolean z = false;
        PlaceFilter placeFilter = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i4 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    placeFilter = (PlaceFilter) zza.a(parcel, a, PlaceFilter.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    nearbyAlertFilter = (NearbyAlertFilter) zza.a(parcel, a, NearbyAlertFilter.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i3 = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i = zza.f(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i5 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new NearbyAlertRequest(i5, i4, i2, placeFilter, nearbyAlertFilter, z, i3, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public NearbyAlertRequest[] a(int i) {
        return new NearbyAlertRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
