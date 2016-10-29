package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class f implements Creator<AutocompleteFilter> {
    static void a(AutocompleteFilter autocompleteFilter, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, autocompleteFilter.b);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, autocompleteFilter.a);
        a.a(parcel, 2, autocompleteFilter.c, false);
        a.a(parcel, a);
    }

    public AutocompleteFilter a(Parcel parcel) {
        boolean z = false;
        int b = zza.b(parcel);
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    z = zza.c(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    list = zza.A(parcel, a);
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
            return new AutocompleteFilter(i, z, list);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AutocompleteFilter[] a(int i) {
        return new AutocompleteFilter[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
