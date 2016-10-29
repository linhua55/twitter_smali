package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class x implements Creator<LocationSettingsStates> {
    static void a(LocationSettingsStates locationSettingsStates, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationSettingsStates.b());
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationSettingsStates.a());
        a.a(parcel, 2, locationSettingsStates.d());
        a.a(parcel, 3, locationSettingsStates.f());
        a.a(parcel, 4, locationSettingsStates.c());
        a.a(parcel, 5, locationSettingsStates.e());
        a.a(parcel, 6, locationSettingsStates.g());
        a.a(parcel, a);
    }

    public LocationSettingsStates a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    z6 = zza.c(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    z5 = zza.c(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    z4 = zza.c(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z3 = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z2 = zza.c(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    z = zza.c(parcel, a);
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
            return new LocationSettingsStates(i, z6, z5, z4, z3, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationSettingsStates[] a(int i) {
        return new LocationSettingsStates[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
