package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.location.internal.ab;

final class j extends g<ab, d> {
    j() {
    }

    public /* synthetic */ h a(Context context, Looper looper, w wVar, Object obj, q qVar, r rVar) {
        return a(context, looper, wVar, (d) obj, qVar, rVar);
    }

    public ab a(Context context, Looper looper, w wVar, d dVar, q qVar, r rVar) {
        return new ab(context, looper, qVar, rVar, "locationServices", wVar);
    }
}
