package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

public class e implements Creator<AddPlaceRequest> {
    static void a(AddPlaceRequest addPlaceRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, addPlaceRequest.a(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, addPlaceRequest.a);
        a.a(parcel, 2, addPlaceRequest.b(), i, false);
        a.a(parcel, 3, addPlaceRequest.c(), false);
        a.a(parcel, 4, addPlaceRequest.d(), false);
        a.a(parcel, 5, addPlaceRequest.e(), false);
        a.a(parcel, 6, addPlaceRequest.f(), i, false);
        a.a(parcel, a);
    }

    public AddPlaceRequest a(Parcel parcel) {
        Uri uri = null;
        int b = zza.b(parcel);
        int i = 0;
        String str = null;
        List list = null;
        String str2 = null;
        LatLng latLng = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str3 = zza.o(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    latLng = (LatLng) zza.a(parcel, a, LatLng.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    str2 = zza.o(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    list = zza.A(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    str = zza.o(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    uri = (Uri) zza.a(parcel, a, Uri.CREATOR);
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
            return new AddPlaceRequest(i, str3, latLng, str2, list, str, uri);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AddPlaceRequest[] a(int i) {
        return new AddPlaceRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
