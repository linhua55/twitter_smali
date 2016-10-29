package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.y;

@oi
public class c {
    public qb a(Context context, a aVar, y yVar, d dVar) {
        qb abVar = aVar.b.c.getBundle("sdk_less_server_data") != null ? new ab(context, aVar, dVar) : new zzb(context, aVar, yVar, dVar);
        abVar.g();
        return abVar;
    }
}
