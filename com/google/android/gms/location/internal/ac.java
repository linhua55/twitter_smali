package com.google.android.gms.location.internal;

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
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class ac implements Creator<LocationRequestInternal> {
    static void a(LocationRequestInternal locationRequestInternal, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationRequestInternal.b, i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationRequestInternal.a());
        a.a(parcel, 2, locationRequestInternal.c);
        a.a(parcel, 3, locationRequestInternal.d);
        a.a(parcel, 4, locationRequestInternal.e);
        a.c(parcel, 5, locationRequestInternal.f, false);
        a.a(parcel, 6, locationRequestInternal.g, false);
        a.a(parcel, 7, locationRequestInternal.h);
        a.a(parcel, a);
    }

    public LocationRequestInternal a(Parcel parcel) {
        String str = null;
        boolean z = true;
        boolean z2 = false;
        int b = zza.b(parcel);
        List list = LocationRequestInternal.a;
        boolean z3 = true;
        boolean z4 = false;
        LocationRequest locationRequest = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    locationRequest = (LocationRequest) zza.a(parcel, a, LocationRequest.CREATOR);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z4 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z3 = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    list = zza.c(parcel, a, ClientIdentity.CREATOR);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    str = zza.o(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    z2 = zza.c(parcel, a);
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
            return new LocationRequestInternal(i, locationRequest, z4, z3, z, list, str, z2);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationRequestInternal[] a(int i) {
        return new LocationRequestInternal[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
