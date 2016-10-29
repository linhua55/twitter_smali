package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class w implements Creator<LocationSettingsResult> {
    static void a(LocationSettingsResult locationSettingsResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationSettingsResult.a(), i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationSettingsResult.b());
        a.a(parcel, 2, locationSettingsResult.c(), i, false);
        a.a(parcel, a);
    }

    public LocationSettingsResult a(Parcel parcel) {
        LocationSettingsStates locationSettingsStates = null;
        int b = zza.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int i2;
            LocationSettingsStates locationSettingsStates2;
            Status status2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = i;
                    Status status3 = (Status) zza.a(parcel, a, Status.CREATOR);
                    locationSettingsStates2 = locationSettingsStates;
                    status2 = status3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    locationSettingsStates2 = (LocationSettingsStates) zza.a(parcel, a, LocationSettingsStates.CREATOR);
                    status2 = status;
                    i2 = i;
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    LocationSettingsStates locationSettingsStates3 = locationSettingsStates;
                    status2 = status;
                    i2 = zza.f(parcel, a);
                    locationSettingsStates2 = locationSettingsStates3;
                    break;
                default:
                    zza.b(parcel, a);
                    locationSettingsStates2 = locationSettingsStates;
                    status2 = status;
                    i2 = i;
                    break;
            }
            i = i2;
            status = status2;
            locationSettingsStates = locationSettingsStates2;
        }
        if (parcel.dataPosition() == b) {
            return new LocationSettingsResult(i, status, locationSettingsStates);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationSettingsResult[] a(int i) {
        return new LocationSettingsResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
