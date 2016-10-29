package tv.periscope.android.library;

import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import defpackage.dbr;
import tv.periscope.android.ui.broadcast.m;

/* compiled from: Twttr */
public class a {
    private static volatile a a;
    private final c b;
    private ActivityLifecycleCallbacks c;
    private m d;

    public static a a() {
        if (a != null) {
            return a;
        }
        throw new IllegalStateException("Must call Periscope.initialize before calling getInstance");
    }

    public static boolean b() {
        return a != null;
    }

    public static void a(Context context, c cVar) {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a(context, cVar);
                }
            }
            return;
        }
        throw new IllegalStateException("Periscope.initialize has already been called!");
    }

    private a(Context context, c cVar) {
        this.b = cVar;
        if (context instanceof Application) {
            a((Application) context);
            return;
        }
        throw new IllegalStateException("Context must be an instance of Application");
    }

    private void a(Application application) {
        this.c = new b(this);
        application.registerActivityLifecycleCallbacks(this.c);
    }

    public dbr c() {
        if (this.d == null) {
            this.d = new m(this.b);
        }
        return this.d;
    }
}
