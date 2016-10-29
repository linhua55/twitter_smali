package com.twitter.android.initialization;

import android.app.Activity;
import android.content.Context;
import bbk;
import bbn;
import com.twitter.app.common.util.c;
import com.twitter.library.scribe.ScribeService;
import com.twitter.util.aj;
import com.twitter.util.h;
import com.twitter.util.object.e;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Collection;

/* compiled from: Twttr */
class d implements UncaughtExceptionHandler {
    private final Context a;
    private final boolean b;
    private final UncaughtExceptionHandler c;

    d(Context context, UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        this.a = context.getApplicationContext();
        this.b = z;
        this.c = uncaughtExceptionHandler;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (this.b) {
            ScribeService.a(this.a, 0, th);
        }
        if (th instanceof OutOfMemoryError) {
            bbn.b(th);
        } else {
            bbk a = bbn.a();
            a.a();
            try {
                a.b("Logcat", aj.a("\n", (Iterable) e.a((Collection) h.a(new e(this)))));
                Activity b = c.a().b();
                if (b != null) {
                    a.b("Last Resumed Activity", b.toString());
                }
                bbn.b(th);
            } finally {
                a.b();
            }
        }
        if (this.c != null) {
            this.c.uncaughtException(thread, th);
        }
    }
}
