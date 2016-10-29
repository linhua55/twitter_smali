package com.google.android.gms.location;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.location.internal.ab;
import com.google.android.gms.location.internal.ag;
import com.google.android.gms.location.internal.k;

public class i {
    public static final a<d> a;
    public static final d b;
    public static final e c;
    public static final l d;
    private static final com.google.android.gms.common.api.i<ab> e;
    private static final g<ab, d> f;

    static {
        e = new com.google.android.gms.common.api.i();
        f = new j();
        a = new a("LocationServices.API", f, e);
        b = new com.google.android.gms.location.internal.d();
        c = new k();
        d = new ag();
    }

    public static ab a(n nVar) {
        boolean z = true;
        bm.b(nVar != null, "GoogleApiClient parameter is required.");
        ab abVar = (ab) nVar.a(e);
        if (abVar == null) {
            z = false;
        }
        bm.a(z, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return abVar;
    }
}
