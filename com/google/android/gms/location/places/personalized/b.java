package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class b implements Creator<PlaceAliasResult> {
    static void a(PlaceAliasResult placeAliasResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, placeAliasResult.a(), i, false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeAliasResult.a);
        a.a(parcel, 2, placeAliasResult.b(), i, false);
        a.a(parcel, a);
    }

    public PlaceAliasResult a(Parcel parcel) {
        PlaceUserData placeUserData = null;
        int b = zza.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int i2;
            PlaceUserData placeUserData2;
            Status status2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = i;
                    Status status3 = (Status) zza.a(parcel, a, Status.CREATOR);
                    placeUserData2 = placeUserData;
                    status2 = status3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    placeUserData2 = (PlaceUserData) zza.a(parcel, a, PlaceUserData.CREATOR);
                    status2 = status;
                    i2 = i;
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    PlaceUserData placeUserData3 = placeUserData;
                    status2 = status;
                    i2 = zza.f(parcel, a);
                    placeUserData2 = placeUserData3;
                    break;
                default:
                    zza.b(parcel, a);
                    placeUserData2 = placeUserData;
                    status2 = status;
                    i2 = i;
                    break;
            }
            i = i2;
            status = status2;
            placeUserData = placeUserData2;
        }
        if (parcel.dataPosition() == b) {
            return new PlaceAliasResult(i, status, placeUserData);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceAliasResult[] a(int i) {
        return new PlaceAliasResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
