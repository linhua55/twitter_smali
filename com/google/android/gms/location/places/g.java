package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class g implements Creator<NearbyAlertFilter> {
    static void a(NearbyAlertFilter nearbyAlertFilter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.b(parcel, 1, nearbyAlertFilter.b, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, nearbyAlertFilter.a);
        a.a(parcel, 2, nearbyAlertFilter.c, false);
        a.c(parcel, 3, nearbyAlertFilter.d, false);
        a.a(parcel, 4, nearbyAlertFilter.e, false);
        a.a(parcel, 5, nearbyAlertFilter.f);
        a.a(parcel, a);
    }

    public NearbyAlertFilter a(Parcel parcel) {
        boolean z = false;
        String str = null;
        int b = zza.b(parcel);
        List list = null;
        List list2 = null;
        List list3 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list3 = zza.B(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    list2 = zza.A(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    list = zza.c(parcel, a, UserDataType.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
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
            return new NearbyAlertFilter(i, list3, list2, list, str, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public NearbyAlertFilter[] a(int i) {
        return new NearbyAlertFilter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
