package io.fabric.sdk.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.s;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class i {
    private final Context a;
    private p[] b;
    private s c;
    private Handler d;
    private s e;
    private boolean f;
    private String g;
    private String h;
    private l<f> i;

    public i(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.a = context.getApplicationContext();
    }

    public i a(p... pVarArr) {
        if (this.b != null) {
            throw new IllegalStateException("Kits already set.");
        }
        this.b = pVarArr;
        return this;
    }

    public f a() {
        Map hashMap;
        if (this.c == null) {
            this.c = s.a();
        }
        if (this.d == null) {
            this.d = new Handler(Looper.getMainLooper());
        }
        if (this.e == null) {
            if (this.f) {
                this.e = new e(3);
            } else {
                this.e = new e();
            }
        }
        if (this.h == null) {
            this.h = this.a.getPackageName();
        }
        if (this.i == null) {
            this.i = l.d;
        }
        if (this.b == null) {
            hashMap = new HashMap();
        } else {
            hashMap = f.b(Arrays.asList(this.b));
        }
        return new f(this.a, hashMap, this.c, this.d, this.e, this.f, this.i, new IdManager(this.a, this.h, this.g, hashMap.values()));
    }
}
