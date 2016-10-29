package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class bo implements Creator<ResolveAccountResponse> {
    static void a(ResolveAccountResponse resolveAccountResponse, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, resolveAccountResponse.a);
        a.a(parcel, 2, resolveAccountResponse.b, false);
        a.a(parcel, 3, resolveAccountResponse.b(), i, false);
        a.a(parcel, 4, resolveAccountResponse.c());
        a.a(parcel, 5, resolveAccountResponse.d());
        a.a(parcel, a);
    }

    public ResolveAccountResponse a(Parcel parcel) {
        ConnectionResult connectionResult = null;
        boolean z = false;
        int b = zza.b(parcel);
        boolean z2 = false;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    connectionResult = (ConnectionResult) zza.a(parcel, a, ConnectionResult.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    z2 = zza.c(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    z = zza.c(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ResolveAccountResponse(i, iBinder, connectionResult, z2, z);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public ResolveAccountResponse[] a(int i) {
        return new ResolveAccountResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
