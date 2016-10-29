package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;

/* compiled from: Twttr */
class bd implements cd {
    private final Context a;
    private final String b;

    public bd(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public String a() {
        String str = null;
        try {
            Bundle bundle = this.a.getPackageManager().getApplicationInfo(this.b, 128).metaData;
            if (bundle != null) {
                str = bundle.getString("io.fabric.unity.crashlytics.version");
            }
        } catch (Exception e) {
        }
        return str;
    }
}
