package com.twitter.android.loggedoutpush;

import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bbu;

/* compiled from: Twttr */
class c {
    private final d a;
    private final g b;
    private final a c;

    c(d dVar, g gVar, a aVar) {
        this.a = dVar;
        this.b = gVar;
        this.c = aVar;
    }

    public boolean a() {
        if (!aj.a(this.a.a()) && m.b() - this.a.b() <= 432000000 && this.a.c()) {
            return false;
        }
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(":background:device_registration::check"));
        return true;
    }

    public boolean b() {
        if (this.c.a()) {
            return true;
        }
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(":background:gcm_registration::deny"));
        return false;
    }

    public void c() {
        String b = this.c.b();
        if (aj.a((CharSequence) b)) {
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b(":background:gcm_registration::failure"));
            return;
        }
        if (a(b)) {
            this.a.a("loggedout_reg_id", b);
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b(":background:gcm_registration::success"));
            d();
        }
        this.a.a("token_last_update_timestamp", Long.valueOf(m.b()));
    }

    public boolean d() {
        return a(false);
    }

    public boolean e() {
        return a(true);
    }

    private boolean a(boolean z) {
        if (aj.a(this.a.a())) {
            return false;
        }
        if (!z && !f()) {
            return false;
        }
        boolean a = this.b.a(this.a, z);
        this.a.a("reg_id_at_lo_push_destination", Boolean.valueOf(a));
        this.a.a("push_dest_last_update_timestamp", Long.valueOf(a ? m.b() : this.a.d()));
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(bg.a().c().g());
        String[] strArr = new String[1];
        strArr[0] = a ? ":background:device_registration::success" : ":background:device_registration::failure";
        bbu.a(twitterScribeLog.b(strArr));
        return a;
    }

    boolean f() {
        return m.b() - this.a.d() > 432000000;
    }

    boolean a(String str) {
        return (str.equals(this.a.a()) && this.a.c()) ? false : true;
    }

    public void a(long j) {
        if (j > 0) {
            this.a.a("last_update_traffic_data ", Long.valueOf(j));
        }
    }
}
