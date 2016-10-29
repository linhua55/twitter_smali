package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class j implements Creator<FusedLocationProviderResult> {
    static void a(FusedLocationProviderResult fusedLocationProviderResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, fusedLocationProviderResult.a(), i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, fusedLocationProviderResult.b());
        a.a(parcel, a);
    }

    public FusedLocationProviderResult a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    status = (Status) zza.a(parcel, a, Status.CREATOR);
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
            return new FusedLocationProviderResult(i, status);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public FusedLocationProviderResult[] a(int i) {
        return new FusedLocationProviderResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
