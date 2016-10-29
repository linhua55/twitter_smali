package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class ad implements Creator<LocationRequestUpdateData> {
    static void a(LocationRequestUpdateData locationRequestUpdateData, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationRequestUpdateData.a);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationRequestUpdateData.a());
        a.a(parcel, 2, locationRequestUpdateData.b, i, false);
        a.a(parcel, 3, locationRequestUpdateData.b(), false);
        a.a(parcel, 4, locationRequestUpdateData.d, i, false);
        a.a(parcel, 5, locationRequestUpdateData.c(), false);
        a.a(parcel, 6, locationRequestUpdateData.d(), false);
        a.a(parcel, a);
    }

    public LocationRequestUpdateData a(Parcel parcel) {
        IBinder iBinder = null;
        int b = zza.b(parcel);
        int i = 0;
        int i2 = 1;
        IBinder iBinder2 = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder3 = null;
        LocationRequestInternal locationRequestInternal = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    locationRequestInternal = (LocationRequestInternal) zza.a(parcel, a, LocationRequestInternal.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    iBinder3 = zza.p(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    pendingIntent = (PendingIntent) zza.a(parcel, a, PendingIntent.CREATOR);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    iBinder2 = zza.p(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    iBinder = zza.p(parcel, a);
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
            return new LocationRequestUpdateData(i, i2, locationRequestInternal, iBinder3, pendingIntent, iBinder2, iBinder);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationRequestUpdateData[] a(int i) {
        return new LocationRequestUpdateData[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
