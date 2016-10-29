package com.twitter.library.network.forecaster;

import com.twitter.internal.network.d;
import com.twitter.internal.network.q;
import com.twitter.library.client.z;
import com.twitter.platform.TwRadioType;
import com.twitter.platform.m;
import com.twitter.platform.p;
import com.twitter.util.units.bitrate.KilobitsPerSecond;
import com.twitter.util.units.data.Data;
import com.twitter.util.units.data.Kibibytes;
import com.twitter.util.units.duration.Duration;
import com.twitter.util.units.duration.Milliseconds;
import com.twitter.util.units.duration.Minutes;
import com.twitter.util.y;
import cwg;
import cwi;

/* compiled from: Twttr */
public class c extends y<h> {
    private static final Kibibytes a;
    private static final Kibibytes b;
    private static final Milliseconds c;
    private static final Duration d;
    private NetworkQuality e;
    private cwg<Kibibytes, KilobitsPerSecond> f;
    private cwg<Kibibytes, KilobitsPerSecond> g;
    private cwi<Milliseconds> h;
    private boolean i;
    private boolean j;

    static {
        a = new Kibibytes(8.0d);
        b = new Kibibytes(1.0d);
        c = new Milliseconds(300.0d);
        d = new Minutes(4.5d);
    }

    c() {
        this(com.twitter.library.client.y.a(), m.a(), d.a(), q.a());
    }

    protected c(y<z> yVar, y<p> yVar2, d dVar, q qVar) {
        this.e = NetworkQuality.e;
        this.f = new cwg(10);
        this.g = new cwg(10);
        this.h = new cwi(10);
        this.i = true;
        this.j = true;
        a(TwRadioType.b);
        this.j = qVar.b();
        yVar.a(new d(this, yVar));
        yVar2.a(new e(this));
        dVar.a(new f(this));
        qVar.a(new g(this));
    }

    private synchronized void a(p pVar) {
        this.i = pVar.a() != TwRadioType.a;
        a(pVar.a());
    }

    private synchronized void a(boolean z) {
        this.j = z;
        a(a());
    }

    private boolean f() {
        return this.i && this.j;
    }

    private synchronized void a(TwRadioType twRadioType) {
        Number b = f() ? i.b(twRadioType) : KilobitsPerSecond.a;
        Number a = f() ? i.a(twRadioType) : KilobitsPerSecond.a;
        this.f = new cwg(10, b, b);
        this.g = new cwg(10, b, a);
        this.h = new cwi(10, c);
        a(a());
    }

    private synchronized void a(Data data, Duration duration, cwg<Kibibytes, KilobitsPerSecond> cwg_com_twitter_util_units_data_Kibibytes__com_twitter_util_units_bitrate_KilobitsPerSecond) {
        Object obj = 1;
        synchronized (this) {
            Object obj2 = data.a(a) <= 0 ? 1 : null;
            if (duration.a(Milliseconds.a) > 0) {
                obj = null;
            }
            if (obj2 == null && r0 == null) {
                cwg_com_twitter_util_units_data_Kibibytes__com_twitter_util_units_bitrate_KilobitsPerSecond.a(new Kibibytes(data), new KilobitsPerSecond(data, duration));
                a(a());
            }
        }
    }

    private synchronized void a(Duration duration) {
        if ((duration.a(Milliseconds.a) <= 0 ? 1 : null) == null) {
            this.h.add(new Milliseconds(duration));
        }
    }

    private synchronized void a(NetworkQuality networkQuality) {
        if (networkQuality != this.e) {
            a(new h(this.e, networkQuality));
            this.e = networkQuality;
        }
    }

    public synchronized NetworkQuality a() {
        return NetworkQuality.a(NetworkQuality.a(f(), d(), this.e), NetworkQuality.b(f(), c(), this.e));
    }

    public synchronized NetworkQuality b() {
        return this.e;
    }

    public synchronized KilobitsPerSecond c() {
        return new KilobitsPerSecond(this.g.c());
    }

    public synchronized KilobitsPerSecond d() {
        return new KilobitsPerSecond(this.f.c());
    }

    public synchronized Milliseconds e() {
        return new Milliseconds(this.h.c());
    }
}
