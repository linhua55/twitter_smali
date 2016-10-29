package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class h implements Creator<AuthAccountRequest> {
    static void a(AuthAccountRequest authAccountRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, authAccountRequest.a);
        a.a(parcel, 2, authAccountRequest.b, false);
        a.a(parcel, 3, authAccountRequest.c, i, false);
        a.a(parcel, 4, authAccountRequest.d, false);
        a.a(parcel, 5, authAccountRequest.e, false);
        a.a(parcel, a);
    }

    public AuthAccountRequest a(Parcel parcel) {
        Integer num = null;
        int b = zza.b(parcel);
        int i = 0;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
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
                    scopeArr = (Scope[]) zza.b(parcel, a, Scope.CREATOR);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    num2 = zza.g(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    num = zza.g(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new AuthAccountRequest(i, iBinder, scopeArr, num2, num);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public AuthAccountRequest[] a(int i) {
        return new AuthAccountRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
