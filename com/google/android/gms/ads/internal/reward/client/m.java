package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class m implements Creator<RewardedVideoAdRequestParcel> {
    static void a(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, rewardedVideoAdRequestParcel.a);
        a.a(parcel, 2, rewardedVideoAdRequestParcel.b, i, false);
        a.a(parcel, 3, rewardedVideoAdRequestParcel.c, false);
        a.a(parcel, a);
    }

    public RewardedVideoAdRequestParcel a(Parcel parcel) {
        String str = null;
        int b = zza.b(parcel);
        int i = 0;
        AdRequestParcel adRequestParcel = null;
        while (parcel.dataPosition() < b) {
            AdRequestParcel adRequestParcel2;
            int f;
            String str2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    String str3 = str;
                    adRequestParcel2 = adRequestParcel;
                    f = zza.f(parcel, a);
                    str2 = str3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    AdRequestParcel adRequestParcel3 = (AdRequestParcel) zza.a(parcel, a, AdRequestParcel.CREATOR);
                    str2 = str;
                    adRequestParcel2 = adRequestParcel3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    adRequestParcel2 = adRequestParcel;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    str2 = str;
                    adRequestParcel2 = adRequestParcel;
                    f = i;
                    break;
            }
            i = f;
            adRequestParcel = adRequestParcel2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new RewardedVideoAdRequestParcel(i, adRequestParcel, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public RewardedVideoAdRequestParcel[] a(int i) {
        return new RewardedVideoAdRequestParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
