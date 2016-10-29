package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@oi
public class tk extends MutableContextWrapper {
    private Activity a;
    private Context b;
    private Context c;

    public tk(Context context) {
        super(context);
        setBaseContext(context);
    }

    public Activity a() {
        return this.a;
    }

    public Context b() {
        return this.c;
    }

    public Object getSystemService(String str) {
        return this.c.getSystemService(str);
    }

    public void setBaseContext(Context context) {
        this.b = context.getApplicationContext();
        this.a = context instanceof Activity ? (Activity) context : null;
        this.c = context;
        super.setBaseContext(this.b);
    }

    public void startActivity(Intent intent) {
        if (this.a == null || vu.i()) {
            intent.setFlags(268435456);
            this.b.startActivity(intent);
            return;
        }
        this.a.startActivity(intent);
    }
}
