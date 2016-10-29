package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.signin.internal.l;

final class xa extends g<l, xb> {
    xa() {
    }

    public l a(Context context, Looper looper, w wVar, xb xbVar, q qVar, r rVar) {
        return new l(context, looper, false, wVar, xbVar.a(), qVar, rVar);
    }
}
