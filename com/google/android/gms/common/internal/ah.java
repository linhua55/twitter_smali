package com.google.android.gms.common.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.s;

public class ah implements s {
    final /* synthetic */ ab a;

    public ah(ab abVar) {
        this.a = abVar;
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        if (connectionResult.b()) {
            this.a.a(null, this.a.v);
        } else if (this.a.y != null) {
            this.a.y.a(connectionResult);
        }
    }
}
