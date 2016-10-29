package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdRequest.Gender;
import com.google.ads.a;
import com.google.ads.mediation.h;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.j;
import java.util.Date;
import java.util.HashSet;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@oi
public final class lg {
    public static int a(ErrorCode errorCode) {
        switch (lh.b[errorCode.ordinal()]) {
            case WireMessage.WIRE_CONTROL /*2*/:
                return 1;
            case WireMessage.WIRE_AUTH /*3*/:
                return 2;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 3;
            default:
                return 0;
        }
    }

    public static Gender a(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return Gender.b;
            case WireMessage.WIRE_CONTROL /*2*/:
                return Gender.c;
            default:
                return Gender.a;
        }
    }

    public static a a(AdSizeParcel adSizeParcel) {
        int i = 0;
        a[] aVarArr = new a[]{a.a, a.b, a.c, a.d, a.e, a.f};
        while (i < aVarArr.length) {
            if (aVarArr[i].a() == adSizeParcel.f && aVarArr[i].b() == adSizeParcel.c) {
                return aVarArr[i];
            }
            i++;
        }
        return new a(j.a(adSizeParcel.f, adSizeParcel.c, adSizeParcel.b));
    }

    public static h a(AdRequestParcel adRequestParcel) {
        return new h(new Date(adRequestParcel.b), a(adRequestParcel.d), adRequestParcel.e != null ? new HashSet(adRequestParcel.e) : null, adRequestParcel.f, adRequestParcel.k);
    }
}
