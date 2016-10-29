package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class i implements Creator<PlaceFilter> {
    static void a(PlaceFilter placeFilter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeFilter.b, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeFilter.a);
        a.a(parcel, 3, placeFilter.c);
        a.c(parcel, 4, placeFilter.d, false);
        a.b(parcel, 6, placeFilter.e, false);
        a.a(parcel, a);
    }

    public PlaceFilter a(Parcel parcel) {
        boolean z = false;
        List list = null;
        int b = zza.b(parcel);
        List list2 = null;
        List list3 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list3 = zza.A(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    list = zza.c(parcel, a, UserDataType.CREATOR);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    list2 = zza.B(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new PlaceFilter(i, list3, z, list2, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceFilter[] a(int i) {
        return new PlaceFilter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
