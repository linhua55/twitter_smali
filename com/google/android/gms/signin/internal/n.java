package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class n implements Creator<SignInResponse> {
    static void a(SignInResponse signInResponse, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, signInResponse.a);
        a.a(parcel, 2, signInResponse.a(), i, false);
        a.a(parcel, 3, signInResponse.b(), i, false);
        a.a(parcel, a);
    }

    public SignInResponse a(Parcel parcel) {
        ResolveAccountResponse resolveAccountResponse = null;
        int b = zza.b(parcel);
        int i = 0;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < b) {
            ConnectionResult connectionResult2;
            int f;
            ResolveAccountResponse resolveAccountResponse2;
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    ResolveAccountResponse resolveAccountResponse3 = resolveAccountResponse;
                    connectionResult2 = connectionResult;
                    f = zza.f(parcel, a);
                    resolveAccountResponse2 = resolveAccountResponse3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    ConnectionResult connectionResult3 = (ConnectionResult) zza.a(parcel, a, ConnectionResult.CREATOR);
                    resolveAccountResponse2 = resolveAccountResponse;
                    connectionResult2 = connectionResult3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    resolveAccountResponse2 = (ResolveAccountResponse) zza.a(parcel, a, ResolveAccountResponse.CREATOR);
                    connectionResult2 = connectionResult;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    resolveAccountResponse2 = resolveAccountResponse;
                    connectionResult2 = connectionResult;
                    f = i;
                    break;
            }
            i = f;
            connectionResult = connectionResult2;
            resolveAccountResponse = resolveAccountResponse2;
        }
        if (parcel.dataPosition() == b) {
            return new SignInResponse(i, connectionResult, resolveAccountResponse);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public SignInResponse[] a(int i) {
        return new SignInResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
