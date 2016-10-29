package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.annotation.VisibleForTesting;
import bvx;
import bvz;
import bwa;
import bwb;
import bwt;
import com.twitter.android.mx;
import com.twitter.config.AppConfig;
import com.twitter.library.geo.provider.param.LocationPriority;
import com.twitter.library.geo.provider.param.a;
import com.twitter.util.j;
import com.twitter.util.m;
import java.util.HashSet;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: bvy */
public class bvy implements OnSharedPreferenceChangeListener, asp, bvv, bwu {
    private static bvy b;
    private final Context c;
    private final Set<bvv> d;
    private final Handler e;
    private volatile Location f;
    private final LocationManager g;
    private final bwt h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;
    private boolean r;

    @VisibleForTesting
    bvy(Context context) {
        boolean z = true;
        j.a(bvs.a() != null, "GeoModule must be initialized for construction of LocationProducer");
        this.c = context.getApplicationContext();
        this.d = new HashSet();
        this.e = new bwb(this, Looper.getMainLooper());
        this.g = (LocationManager) this.c.getSystemService("location");
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = 10000;
        this.n = 300000;
        this.q = m.b();
        if (!(AppConfig.m().p() && context.getSharedPreferences("geo_location_producer_file", 0).getBoolean("geo_location_producer_mock_enabled", false))) {
            z = false;
        }
        this.r = z;
        this.h = new bwt(this.c, a.a().a(2000).b(1000).a(LocationPriority.a).a(10).a(), this, this.r);
        this.h.a(this);
        bvj.a((asp) this);
        PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(this);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("location".equals(str)) {
            l();
        }
    }

    public static synchronized bvy a(Context context) {
        bvy bvy;
        synchronized (bvy.class) {
            if (b == null) {
                b = new bvy(context);
            }
            bvy = b;
        }
        return bvy;
    }

    public Location a() {
        if (!bvs.a().b() || this.h == null) {
            return null;
        }
        d(this.h.f());
        return this.f;
    }

    public String b() {
        return bvx.a(a());
    }

    public boolean c() {
        return !this.g.getAllProviders().isEmpty();
    }

    public synchronized void a(Location location) {
        d(location);
        if (this.f != null) {
            this.q = this.f.getTime();
            for (bvv bvv : (bvv[]) this.d.toArray(new bvv[this.d.size()])) {
                if (bvv != null && this.d.contains(bvv)) {
                    bvv.a(location);
                }
            }
            if (a(location, 20.0f)) {
                j();
            }
            c(location);
        }
    }

    private void c(Location location) {
        this.c.sendBroadcast(new Intent("com.twitter.library.geo.LOCATION_CHANGED").putExtra("com.twitter.library.geo.LOCATION_EXTRA", location));
    }

    public void b(Location location) {
    }

    public void a(long j) {
        this.e.post(new bvz(this));
    }

    public void d() {
        this.l = false;
        if (this.j) {
            this.e.sendEmptyMessageDelayed(2, 1000);
        }
    }

    public void e() {
        this.l = true;
        if (this.e.hasMessages(2)) {
            this.e.removeMessages(2);
        }
        if (this.j && !this.k) {
            long k = k();
            if (k < 1000) {
                a(this.m, null);
            } else if (!this.e.hasMessages(0)) {
                this.e.sendEmptyMessageDelayed(0, k);
            }
        }
    }

    public void a(bvv bvv) {
        a(bvv, 10000);
    }

    public synchronized void a(bvv bvv, long j) {
        if (!this.d.contains(bvv)) {
            if (bvs.a().b()) {
                Location a = a();
                if (a != null) {
                    this.e.post(new bwa(bvv, a, 0, null));
                }
                if (a(a, 30000)) {
                    this.e.post(new bwa(bvv, a, 1, null));
                } else {
                    this.d.add(bvv);
                    this.e.removeMessages(0);
                    a(j, bvv);
                }
            }
        }
    }

    public synchronized void b(bvv bvv) {
        if (bvv != null) {
            this.e.post(new bwa(bvv, this.f, 1, null));
            this.e.removeMessages(1, bvv);
            this.d.remove(bvv);
        }
        if (!this.e.hasMessages(1)) {
            f();
            if (this.j) {
                this.e.sendEmptyMessageDelayed(0, k());
            }
        }
    }

    public void a(boolean z, boolean z2, int i, int i2) {
        this.h.b(z2);
        a(z, i, i2);
    }

    synchronized void a(boolean z) {
        if (z != this.r) {
            this.r = z;
            this.c.getSharedPreferences("geo_location_producer_file", 0).edit().putBoolean("geo_location_producer_mock_enabled", z).apply();
            g();
            this.h.a(this.r);
        }
    }

    protected boolean a(Location location, Location location2) {
        if (location == null || !location.hasAccuracy()) {
            return false;
        }
        if (location2 == null) {
            return true;
        }
        boolean z;
        long time = location.getTime() - location2.getTime();
        boolean z2 = time > 30000;
        if (time < -30000) {
            z = true;
        } else {
            z = false;
        }
        if (z2) {
            return true;
        }
        if (z) {
            return false;
        }
        if ((time < 0 || !a(location, 20.0f)) && location.getAccuracy() > location2.getAccuracy()) {
            return false;
        }
        return true;
    }

    protected boolean a(Location location, long j) {
        if (location == null) {
            return false;
        }
        long b = m.b() - location.getTime();
        if (b < 0 || b > j) {
            return false;
        }
        return true;
    }

    protected boolean a(Location location, float f) {
        return location != null && location.hasAccuracy() && location.getAccuracy() < f;
    }

    protected synchronized void f() {
        if (this.k && this.h != null) {
            this.h.h();
            this.p = m.b();
            this.k = false;
        }
    }

    protected synchronized void a(long j, bvv bvv) {
        if (!(this.k || this.h == null)) {
            this.o = m.b();
            this.h.g();
            this.k = true;
        }
        if (j >= 0) {
            if (bvv == null) {
                this.e.sendEmptyMessageDelayed(1, j);
            } else {
                Message message = new Message();
                message.what = 1;
                message.obj = bvv;
                this.e.sendMessageDelayed(message, j);
            }
        }
    }

    protected void a(Message message) {
        switch (message.what) {
            case mx.View_android_theme /*0*/:
                a(this.m, null);
            case WireMessage.WIRE_CHAT /*1*/:
                b((bvv) message.obj);
            case WireMessage.WIRE_CONTROL /*2*/:
                m();
            default:
        }
    }

    synchronized void g() {
        this.f = null;
        this.q = m.b();
    }

    public void h() {
        m();
    }

    public void i() {
        if (this.l) {
            e();
        }
    }

    private synchronized void j() {
        this.e.removeMessages(1);
        for (bvv b : this.d) {
            b.b(this.f);
        }
        this.d.clear();
        f();
        if (this.j) {
            this.e.sendEmptyMessageDelayed(0, k());
        }
    }

    private long k() {
        long b = m.b();
        long j = b - this.p;
        if (j >= this.n) {
            return 0;
        }
        long j2 = this.q;
        if (j2 >= this.o && j2 <= this.p) {
            return this.n - j;
        }
        return this.n - ((b - j2) % this.n);
    }

    private void d(Location location) {
        if (bvs.a().b() && a(location, this.f)) {
            this.f = location;
        }
    }

    private void a(boolean z, int i, int i2) {
        if (i != -1) {
            this.m = ((long) i) * 1000;
            if (((long) i) * 1000 < 5000) {
                this.m = 10000;
            }
        }
        if (i2 != -1) {
            this.n = ((long) i2) * 1000;
            if (((long) i2) * 1000 < 30000) {
                this.n = 300000;
            }
        }
        if (this.i != z) {
            this.i = z;
            l();
        }
    }

    private void l() {
        boolean z = bvs.a().a() && this.i;
        if (z != this.j) {
            this.j = z;
            if (!z) {
                m();
                g();
            } else if (this.l) {
                e();
            }
        }
    }

    private void m() {
        j();
        this.e.removeMessages(0);
        this.e.removeMessages(1);
    }
}
