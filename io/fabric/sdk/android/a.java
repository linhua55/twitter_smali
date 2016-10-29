package io.fabric.sdk.android;

import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;

/* compiled from: Twttr */
public class a {
    private final Application a;
    private b b;

    public a(Context context) {
        this.a = (Application) context.getApplicationContext();
        if (VERSION.SDK_INT >= 14) {
            this.b = new b(this.a);
        }
    }

    public boolean a(d dVar) {
        return this.b != null && this.b.a(dVar);
    }

    public void a() {
        if (this.b != null) {
            this.b.a();
        }
    }
}
