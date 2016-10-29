package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.signin.internal.l;

final class wz extends g<l, xe> {
    wz() {
    }

    public l a(Context context, Looper looper, w wVar, xe xeVar, q qVar, r rVar) {
        return new l(context, looper, true, wVar, xeVar == null ? xe.a : xeVar, qVar, rVar);
    }
}
