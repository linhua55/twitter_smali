package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class e implements Creator<ConnectionResult> {
    static void a(ConnectionResult connectionResult, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, connectionResult.b);
        a.a(parcel, 2, connectionResult.c());
        a.a(parcel, 3, connectionResult.d(), i, false);
        a.a(parcel, 4, connectionResult.e(), false);
        a.a(parcel, a);
    }

    public ConnectionResult a(Parcel parcel) {
        String str = null;
        int i = 0;
        int b = zza.b(parcel);
        PendingIntent pendingIntent = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            PendingIntent pendingIntent2;
            int i3;
            String str2;
            int a = zza.a(parcel);
            String str3;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    str3 = str;
                    pendingIntent2 = pendingIntent;
                    i3 = i;
                    i = zza.f(parcel, a);
                    str2 = str3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i = i2;
                    PendingIntent pendingIntent3 = pendingIntent;
                    i3 = zza.f(parcel, a);
                    str2 = str;
                    pendingIntent2 = pendingIntent3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i3 = i;
                    i = i2;
                    str3 = str;
                    pendingIntent2 = (PendingIntent) zza.a(parcel, a, PendingIntent.CREATOR);
                    str2 = str3;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str2 = zza.o(parcel, a);
                    pendingIntent2 = pendingIntent;
                    i3 = i;
                    i = i2;
                    break;
                default:
                    zza.b(parcel, a);
                    str2 = str;
                    pendingIntent2 = pendingIntent;
                    i3 = i;
                    i = i2;
                    break;
            }
            i2 = i;
            i = i3;
            pendingIntent = pendingIntent2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new ConnectionResult(i2, i, pendingIntent, str);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ConnectionResult[] a(int i) {
        return new ConnectionResult[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
