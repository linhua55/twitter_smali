package io.fabric.sdk.android.services.common;

import android.content.Context;
import defpackage.cwm;
import defpackage.cwo;
import io.fabric.sdk.android.f;

/* compiled from: Twttr */
public class w {
    private final cwo<String> a;
    private final cwm<String> b;

    public w() {
        this.a = new x(this);
        this.b = new cwm();
    }

    public String a(Context context) {
        try {
            String str = (String) this.b.a(context, this.a);
            if ("".equals(str)) {
                return null;
            }
            return str;
        } catch (Throwable e) {
            f.h().e("Fabric", "Failed to determine installer package name", e);
            return null;
        }
    }
}
