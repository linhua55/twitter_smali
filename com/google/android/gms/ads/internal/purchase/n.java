package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;

@oi
public class n {
    private final String a;

    public n(String str) {
        this.a = str;
    }

    public String a() {
        return ar.e().c();
    }

    public boolean a(String str, int i, Intent intent) {
        if (str == null || intent == null) {
            return false;
        }
        String b = ar.o().b(intent);
        String c = ar.o().c(intent);
        if (b == null || c == null) {
            return false;
        }
        if (!str.equals(ar.o().a(b))) {
            b.d("Developer payload not match.");
            return false;
        } else if (this.a == null || o.a(this.a, b, c)) {
            return true;
        } else {
            b.d("Fail to verify signature.");
            return false;
        }
    }
}
