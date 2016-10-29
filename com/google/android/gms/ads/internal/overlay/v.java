package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;

@oi
public class v extends s {
    @Nullable
    public zzi a(Context context, sz szVar, int i, cy cyVar, cu cuVar) {
        if (!a(context)) {
            return null;
        }
        return new zzc(context, new aa(context, szVar.o(), szVar.u(), cyVar, cuVar));
    }
}
