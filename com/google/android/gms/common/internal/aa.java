package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class aa implements Creator<GetServiceRequest> {
    static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, getServiceRequest.a);
        a.a(parcel, 2, getServiceRequest.b);
        a.a(parcel, 3, getServiceRequest.c);
        a.a(parcel, 4, getServiceRequest.d, false);
        a.a(parcel, 5, getServiceRequest.e, false);
        a.a(parcel, 6, getServiceRequest.f, i, false);
        a.a(parcel, 7, getServiceRequest.g, false);
        a.a(parcel, 8, getServiceRequest.h, i, false);
        a.a(parcel, a);
    }

    public GetServiceRequest a(Parcel parcel) {
        int i = 0;
        Account account = null;
        int b = zza.b(parcel);
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i3 = zza.f(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = zza.f(parcel, a);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    str = zza.o(parcel, a);
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    iBinder = zza.p(parcel, a);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    scopeArr = (Scope[]) zza.b(parcel, a, Scope.CREATOR);
                    break;
                case C.ENCODING_DTS /*7*/:
                    bundle = zza.q(parcel, a);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    account = (Account) zza.a(parcel, a, Account.CREATOR);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GetServiceRequest(i3, i2, i, str, iBinder, scopeArr, bundle, account);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public GetServiceRequest[] a(int i) {
        return new GetServiceRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
