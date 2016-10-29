package com.twitter.library.network.forecaster;

import android.content.Context;
import cdo;
import com.twitter.util.units.bitrate.KilobitsPerSecond;
import com.twitter.util.units.duration.Milliseconds;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public class b extends y<h> {
    private static b a;
    private final c b;
    private final a c;
    private final cdo d;

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            if (a != null) {
                throw new IllegalStateException("Network class has already been initialized.");
            }
            a = new b(context);
        }
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (a == null) {
                throw new IllegalStateException("Network class has not been initialized.");
            }
            bVar = a;
        }
        return bVar;
    }

    b(Context context) {
        this(new c(), new a(context), b(context));
    }

    protected b(c cVar, a aVar, cdo cdo) {
        this.b = cVar;
        this.c = aVar;
        this.d = cdo;
    }

    private static cdo b(Context context) {
        cdo.a(context);
        return cdo.a();
    }

    public NetworkQuality b() {
        return this.b.b();
    }

    public KilobitsPerSecond c() {
        return this.b.c();
    }

    public KilobitsPerSecond d() {
        return this.b.d();
    }

    public Milliseconds e() {
        return this.b.e();
    }

    public boolean f() {
        return this.c.a();
    }

    public int g() {
        return this.d.b();
    }

    public String h() {
        return this.d.c();
    }

    public boolean a(z<h> zVar) {
        return this.b.a(zVar);
    }

    public boolean b(z<h> zVar) {
        return this.b.b(zVar);
    }
}
