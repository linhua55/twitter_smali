package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class ae implements Creator<ParcelableGeofence> {
    static void a(ParcelableGeofence parcelableGeofence, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, parcelableGeofence.f(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, parcelableGeofence.a());
        a.a(parcel, 2, parcelableGeofence.g());
        a.a(parcel, 3, parcelableGeofence.b());
        a.a(parcel, 4, parcelableGeofence.c());
        a.a(parcel, 5, parcelableGeofence.d());
        a.a(parcel, 6, parcelableGeofence.e());
        a.a(parcel, 7, parcelableGeofence.h());
        a.a(parcel, 8, parcelableGeofence.i());
        a.a(parcel, 9, parcelableGeofence.j());
        a.a(parcel, a);
    }

    public ParcelableGeofence a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        short s = (short) 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = 0.0f;
        long j = 0;
        int i3 = 0;
        int i4 = -1;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    j = zza.h(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    s = zza.e(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    d = zza.m(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    d2 = zza.m(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    f = zza.k(parcel, a);
                    break;
                case C.ENCODING_DTS /*7*/:
                    i2 = zza.f(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    i3 = zza.f(parcel, a);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    i4 = zza.f(parcel, a);
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
            return new ParcelableGeofence(i, str, i2, s, d, d2, f, j, i3, i4);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ParcelableGeofence[] a(int i) {
        return new ParcelableGeofence[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
