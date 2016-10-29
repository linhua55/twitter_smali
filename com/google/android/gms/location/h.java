package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;

public class h implements Creator<LocationRequest> {
    static void a(LocationRequest locationRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, locationRequest.a);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, locationRequest.b());
        a.a(parcel, 2, locationRequest.b);
        a.a(parcel, 3, locationRequest.c);
        a.a(parcel, 4, locationRequest.d);
        a.a(parcel, 5, locationRequest.e);
        a.a(parcel, 6, locationRequest.f);
        a.a(parcel, 7, locationRequest.g);
        a.a(parcel, 8, locationRequest.h);
        a.a(parcel, a);
    }

    public LocationRequest a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        int i2 = bdd.AppCompatTheme_checkboxStyle;
        long j = 3600000;
        long j2 = 600000;
        boolean z = false;
        long j3 = PtsTimestampAdjuster.DO_NOT_OFFSET;
        int i3 = Integer.MAX_VALUE;
        float f = 0.0f;
        long j4 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j = zza.h(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    j2 = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    j3 = zza.h(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    i3 = zza.f(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    f = zza.k(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    j4 = zza.h(parcel, a);
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
            return new LocationRequest(i, i2, j, j2, z, j3, i3, f, j4);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LocationRequest[] a(int i) {
        return new LocationRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
