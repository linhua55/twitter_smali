package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.List;

public class a implements Creator<ActivityRecognitionResult> {
    static void a(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.c(parcel, 1, activityRecognitionResult.a, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, activityRecognitionResult.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, activityRecognitionResult.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, activityRecognitionResult.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, activityRecognitionResult.d);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, activityRecognitionResult.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a);
    }

    public ActivityRecognitionResult a(Parcel parcel) {
        long j = 0;
        Bundle bundle = null;
        int i = 0;
        int b = zza.b(parcel);
        long j2 = 0;
        List list = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    list = zza.c(parcel, a, DetectedActivity.CREATOR);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j2 = zza.h(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    j = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    bundle = zza.q(parcel, a);
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
            return new ActivityRecognitionResult(i2, list, j2, j, i, bundle);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ActivityRecognitionResult[] a(int i) {
        return new ActivityRecognitionResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
