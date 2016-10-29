package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class f implements Creator<LocationAvailability> {
    static void a(LocationAvailability locationAvailability, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationAvailability.a);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationAvailability.b());
        a.a(parcel, 2, locationAvailability.b);
        a.a(parcel, 3, locationAvailability.c);
        a.a(parcel, 4, locationAvailability.d);
        a.a(parcel, a);
    }

    public LocationAvailability a(Parcel parcel) {
        int i = 1;
        int b = zza.b(parcel);
        int i2 = 0;
        int i3 = ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        long j = 0;
        int i4 = 1;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i4 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    j = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i3 = zza.f(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i2 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LocationAvailability(i2, i3, i4, i, j);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationAvailability[] a(int i) {
        return new LocationAvailability[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
