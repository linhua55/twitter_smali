package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class e implements Creator<RewardItemParcel> {
    static void a(RewardItemParcel rewardItemParcel, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, rewardItemParcel.a);
        a.a(parcel, 2, rewardItemParcel.b, false);
        a.a(parcel, 3, rewardItemParcel.c);
        a.a(parcel, a);
    }

    public RewardItemParcel a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    str = zza.o(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new RewardItemParcel(i2, str, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public RewardItemParcel[] a(int i) {
        return new RewardItemParcel[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
