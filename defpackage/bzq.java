package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import cap;
import cgl;
import cmb;
import com.twitter.config.AppConfig;
import com.twitter.library.client.q;
import com.twitter.library.client.s;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.TwitterUser;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: bzq */
public class bzq implements q {
    final WeakReference<Activity> a;
    final DisplayMode b;
    final cgl c;
    final String d;
    final long e;
    boolean f;
    cah g;

    public static bzq a(Activity activity, cgl cgl) {
        if (activity == null) {
            return null;
        }
        if (s.class.isAssignableFrom(activity.getClass())) {
            if (cgl == null) {
                return null;
            }
            String b = cgl.b();
            DisplayMode displayMode = DisplayMode.COMPOSE;
            cmb N = cgl.N();
            bzr.a().c(-1, N);
            cbc a = cbc.a();
            for (String str : cgl.d().keySet()) {
                TwitterUser twitterUser = (TwitterUser) cgl.d().get(str);
                a.c(twitterUser.c, twitterUser);
            }
            if (cap.b().a(b, displayMode, N)) {
                return new bzq(activity, displayMode, -1, b, cgl);
            }
            return null;
        } else if (!AppConfig.m().p()) {
            return null;
        } else {
            throw new IllegalArgumentException("Not assignable from ActivityListenerRegistry");
        }
    }

    bzq(Activity activity, DisplayMode displayMode, long j, String str, cgl cgl) {
        this.a = new WeakReference(activity);
        this.b = displayMode;
        this.c = cgl;
        this.d = str;
        this.e = j;
    }

    public void a() {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            caj a = cap.b().a(this.d, this.b);
            if (a != null) {
                cmb N = this.c.N();
                this.g = a.a(activity, this.b, N);
                ((s) activity).a(this);
                this.g.a((Object) new cai(this.e, this.e, N));
                this.f = true;
            }
        }
    }

    public void b() {
        if (this.g != null) {
            this.g.b();
        }
    }

    public void c() {
        if (this.f) {
            this.g.a();
            Activity activity = (Activity) this.a.get();
            if (activity != null) {
                ((s) activity).b(this);
            }
            this.f = false;
        }
    }

    public View d() {
        return this.g != null ? this.g.e() : null;
    }

    public void n() {
        if (this.g != null) {
            this.g.al_();
        }
    }

    public void a(boolean z) {
        if (this.g != null) {
            this.g.a(z);
        }
    }

    public void b(boolean z) {
        c();
        if (this.g != null) {
            this.g.b(z);
        }
    }

    public void a(Bundle bundle) {
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(Configuration configuration) {
        if (this.g != null) {
            this.g.a(configuration);
        }
    }

    public void e() {
        if (this.g != null) {
            this.g.ak_();
        }
    }

    public void o() {
        if (this.g != null) {
            this.g.ak_();
        }
    }
}
