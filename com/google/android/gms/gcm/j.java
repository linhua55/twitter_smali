package com.google.android.gms.gcm;

import android.os.Bundle;
import com.google.android.gms.common.internal.bm;

public abstract class j {
    protected int a;
    protected String b;
    protected String c;
    protected boolean d;
    protected boolean e;
    protected boolean f;
    protected o g;
    protected Bundle h;

    public j() {
        this.g = o.a;
    }

    protected void a() {
        bm.b(this.b != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
        a.a(this.c);
        Task.a(this.g);
        if (this.e) {
            Task.b(this.h);
        }
    }
}
