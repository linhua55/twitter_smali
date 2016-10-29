package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class h implements Creator<WebImage> {
    static void a(WebImage webImage, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, webImage.a());
        a.a(parcel, 2, webImage.b(), i, false);
        a.a(parcel, 3, webImage.c());
        a.a(parcel, 4, webImage.d());
        a.a(parcel, a);
    }

    public WebImage a(Parcel parcel) {
        int i = 0;
        int b = zza.b(parcel);
        Uri uri = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            Uri uri2;
            int f;
            int a = zza.a(parcel);
            int i4;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i4 = i;
                    i = i2;
                    uri2 = uri;
                    f = zza.f(parcel, a);
                    a = i4;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i3;
                    i4 = i2;
                    uri2 = (Uri) zza.a(parcel, a, Uri.CREATOR);
                    a = i;
                    i = i4;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    uri2 = uri;
                    f = i3;
                    i4 = i;
                    i = zza.f(parcel, a);
                    a = i4;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    a = zza.f(parcel, a);
                    i = i2;
                    uri2 = uri;
                    f = i3;
                    break;
                default:
                    zza.b(parcel, a);
                    a = i;
                    i = i2;
                    uri2 = uri;
                    f = i3;
                    break;
            }
            i3 = f;
            uri = uri2;
            i2 = i;
            i = a;
        }
        if (parcel.dataPosition() == b) {
            return new WebImage(i3, uri, i2, i);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public WebImage[] a(int i) {
        return new WebImage[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
