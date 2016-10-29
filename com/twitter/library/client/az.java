package com.twitter.library.client;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.AsyncService;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.c;
import com.twitter.internal.android.service.u;
import com.twitter.internal.android.service.z;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class az {
    private static az a;
    private final ba<Bundle, x> b;
    private final ai c;
    private final z d;
    private final Context e;

    public static synchronized az a(Context context) {
        az azVar;
        synchronized (az.class) {
            if (a == null) {
                a = new az(context);
            }
            azVar = a;
        }
        return azVar;
    }

    az(Context context) {
        this.e = context.getApplicationContext();
        this.c = new ai(this.e);
        this.b = new ba();
        this.d = new z(this.e);
    }

    public void a(com.twitter.library.service.z zVar) {
        this.b.a(zVar);
    }

    public void b(com.twitter.library.service.z zVar) {
        this.b.b(zVar);
    }

    public void a(u uVar) {
        this.d.a(uVar);
    }

    public String a(x xVar) {
        b(xVar, null, null);
        return a((AsyncOperation) xVar);
    }

    public String a(AsyncOperation<?, ?> asyncOperation) {
        z zVar = this.d;
        if (!zVar.a()) {
            this.e.bindService(new Intent(this.e, AsyncService.class), zVar, 1);
        }
        return zVar.a(asyncOperation);
    }

    public boolean a(x xVar, int i, bb bbVar) {
        com.twitter.library.service.z bcVar;
        if (bbVar != null) {
            bcVar = new bc(i, bbVar);
        } else {
            bcVar = null;
        }
        b(xVar, bcVar, null);
        a((AsyncOperation) xVar);
        return true;
    }

    public String a(x xVar, com.twitter.library.service.z zVar) {
        return a(xVar, zVar, ExecutionClass.MAIN_THREAD);
    }

    public String a(x xVar, com.twitter.library.service.z zVar, ExecutionClass executionClass) {
        if (xVar == null) {
            throw new IllegalArgumentException("Request cannot be null");
        }
        b(xVar, zVar, executionClass);
        return a((AsyncOperation) xVar);
    }

    private void b(x xVar, com.twitter.library.service.z zVar, ExecutionClass executionClass) {
        xVar.a((c) this.c);
        if (zVar != null) {
            xVar.a((c) zVar, executionClass);
        }
        xVar.a((c) this.b);
    }

    @Deprecated
    public void a(x xVar, ab<aa> abVar) {
        xVar.a((c) this.b);
        xVar.c((ab) abVar);
        xVar.a(null);
    }

    public boolean a(String str) {
        return this.d.a(str);
    }

    public void a() {
        this.d.a(false);
    }

    public void b(String str) {
        a(str, false);
    }

    public void a(String str, boolean z) {
        this.d.a(str, z);
    }
}
