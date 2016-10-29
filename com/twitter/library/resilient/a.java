package com.twitter.library.resilient;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class a implements c<Bundle, x> {
    private static a a;
    private final Context b;

    public /* synthetic */ void a(AsyncOperation asyncOperation) {
        b((x) asyncOperation);
    }

    public /* synthetic */ void b(AsyncOperation asyncOperation) {
        a((x) asyncOperation);
    }

    private a(Context context) {
        this.b = context;
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a(context.getApplicationContext());
            }
            aVar = a;
        }
        return aVar;
    }

    public void a(x xVar) {
        if (xVar instanceof b) {
            h.a(this.b).b((b) xVar);
        }
    }

    public void a(Bundle bundle, x xVar) {
    }

    public void b(x xVar) {
        if (xVar instanceof b) {
            h.a(this.b).a((b) xVar);
        }
    }
}
