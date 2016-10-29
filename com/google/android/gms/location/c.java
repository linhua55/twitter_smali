package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class c implements Creator<DetectedActivity> {
    static void a(DetectedActivity detectedActivity, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, detectedActivity.c);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, detectedActivity.c());
        a.a(parcel, 2, detectedActivity.d);
        a.a(parcel, a);
    }

    public DetectedActivity a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = zza.f(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i3 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new DetectedActivity(i3, i2, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public DetectedActivity[] a(int i) {
        return new DetectedActivity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
