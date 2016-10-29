package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import bzr;
import cah;
import cai;
import caj;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.model.core.Tweet;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: cal */
public class cal implements i {
    final WeakReference<Activity> a;
    final DisplayMode b;
    final cmb c;
    final String d;
    final long e;
    final TwitterScribeAssociation f;
    boolean g;
    cah h;

    public static cal a(Activity activity, long j, cgl cgl) {
        if (activity == null || cgl == null) {
            return null;
        }
        cmb N = cgl.N();
        bzr.a().c(j, N);
        return new cal(activity, DisplayMode.c, j, "app", N);
    }

    cal(Activity activity, DisplayMode displayMode, long j, String str, cmb cmb) {
        this.a = new WeakReference(activity);
        this.b = displayMode;
        this.c = cmb;
        this.d = str;
        this.e = j;
        this.f = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).b("profile")).d("spotlight");
    }

    public void ba_() {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            caj a = cap.b().a(this.d, this.b);
            if (a != null) {
                this.h = a.a(activity, this.b, this.c);
                ((s) activity).a(this);
                this.h.a(new cai(this.e, this.e, this.c).a("params_extra_scribe_association", this.f));
                this.g = true;
            }
        }
    }

    public void c() {
        if (this.h != null) {
            this.h.b();
        }
    }

    public void bb_() {
        if (this.g) {
            this.h.a();
            Activity activity = (Activity) this.a.get();
            if (activity != null) {
                ((s) activity).b(this);
            }
            this.g = false;
        }
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        return null;
    }

    public View d() {
        return this.h != null ? this.h.e() : null;
    }

    public void a(Tweet tweet) {
    }

    public f f() {
        return null;
    }

    public void n() {
        if (this.h != null) {
            this.h.al_();
        }
    }

    public void a(boolean z) {
        if (this.h != null) {
            this.h.a(z);
        }
    }

    public void b(boolean z) {
        bb_();
        if (this.h != null) {
            this.h.b(z);
        }
    }

    public void a(Bundle bundle) {
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(Configuration configuration) {
        if (this.h != null) {
            this.h.a(configuration);
        }
    }

    public void e() {
        if (this.h != null) {
            this.h.ak_();
        }
    }

    public void o() {
        if (this.h != null) {
            this.h.ak_();
        }
    }
}
