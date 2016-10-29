package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import defpackage.bdd;

public class m implements Creator<PlaceRequest> {
    static void a(PlaceRequest placeRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, placeRequest.b);
        a.a(parcel, 2, placeRequest.a(), i, false);
        a.a(parcel, 3, placeRequest.b());
        a.a(parcel, 4, placeRequest.c());
        a.a(parcel, 5, placeRequest.d());
        a.a(parcel, a);
    }

    public PlaceRequest a(Parcel parcel) {
        int b = zza.b(parcel);
        int i = 0;
        PlaceFilter placeFilter = null;
        long j = PlaceRequest.a;
        int i2 = bdd.AppCompatTheme_checkboxStyle;
        long j2 = PtsTimestampAdjuster.DO_NOT_OFFSET;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    placeFilter = (PlaceFilter) zza.a(parcel, a, PlaceFilter.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    j = zza.h(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    i2 = zza.f(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    j2 = zza.h(parcel, a);
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
            return new PlaceRequest(i, placeFilter, j, i2, j2);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public PlaceRequest[] a(int i) {
        return new PlaceRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
