package com.twitter.android.eventtimelines;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.SearchFragment;
import com.twitter.android.composer.bd;
import com.twitter.android.composer.bf;
import com.twitter.android.eventtimelines.header.a;
import com.twitter.android.eventtimelines.header.b;
import com.twitter.android.io;
import com.twitter.android.km;
import com.twitter.android.nw;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.at;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.util.collection.x;
import com.twitter.util.collection.z;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
public abstract class EventTimelineActivity extends ScrollingHeaderActivity implements h {
    private a a;
    private boolean b;
    private nw c;
    protected km d;
    protected final k e;
    private ToolBar f;
    private ViewGroup g;
    private ViewGroup h;
    private boolean i;
    private int j;
    private final b k;

    protected abstract String f();

    public EventTimelineActivity() {
        this.e = new e(this);
        this.i = false;
        this.j = 0;
        this.k = new f(this);
    }

    static int a(View view) {
        if (view == null || view.getVisibility() != 0) {
            return 0;
        }
        return view.getMeasuredHeight();
    }

    protected ScribeItem l() {
        return null;
    }

    protected a m() {
        return this.a;
    }

    public void b(Bundle bundle, t tVar) {
        this.a = new a(this, this.k);
        this.a.b(bundle);
        Intent intent = (Intent) getIntent().getParcelableExtra("EXTRA_PARENT_EVENT");
        if (intent != null) {
            c(intent);
        }
        super.b(bundle, tVar);
        ad();
    }

    protected void onResume() {
        super.onResume();
        if (VERSION.SDK_INT >= 21) {
            G();
        }
        this.f = X();
    }

    @TargetApi(21)
    private void G() {
        getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public t a(Bundle bundle, t tVar) {
        boolean z = true;
        super.a(bundle, tVar);
        tVar.d(true);
        if (io.a()) {
            z = false;
        }
        tVar.c(z);
        return tVar;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017198);
        return true;
    }

    public int b(w wVar) {
        super.b(wVar);
        ToolBar j = wVar.j();
        j.a(2131953426).b(true);
        j.a(2131953473).b(false);
        return 2;
    }

    public boolean a(ac acVar) {
        long g = ab().g();
        String stringExtra = getIntent().getStringExtra("query");
        switch (acVar.a()) {
            case 2131953473:
                aq.a((Context) this, stringExtra, stringExtra);
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b("event_timeline", BuildConfig.VERSION_NAME, f(), "query", "share")).a(l()));
                return true;
            default:
                return super.a(acVar);
        }
    }

    private void ad() {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this).inflate(2130968813, this.o, false);
        setHeaderView(viewGroup);
        m().a((BackgroundImageView) viewGroup.findViewById(2131952452));
        m().d();
        this.g = (ViewGroup) viewGroup.findViewById(2131952451);
        this.h = (ViewGroup) viewGroup.findViewById(2131952450);
        View s = s();
        View au_ = au_();
        if (!(this.g == null || s == null)) {
            this.g.addView(s);
        }
        if (this.h != null && au_ != null) {
            this.h.addView(au_);
        }
    }

    protected boolean y() {
        return d.a("event_timelines_blur_header_enabled");
    }

    protected void a(int i) {
        super.a(i);
        if (i != this.d.a() || this.m == null) {
            this.n.setCurrentItem(i);
            this.d.a(i);
            return;
        }
        BaseFragment a = ((at) this.m.get(i)).a(getSupportFragmentManager());
        if (a != null && (a instanceof SearchFragment)) {
            ((SearchFragment) a).n();
        }
    }

    protected bd A_() {
        return new bf().a(l()).a("event_timeline").a();
    }

    protected a r() {
        return a.a;
    }

    protected final String n() {
        return r().c;
    }

    protected final String k() {
        return (String) r().b.c(super.k());
    }

    protected final int[] d() {
        if (((z) x.a(r().d)) == null) {
            return super.d();
        }
        return new int[]{((Integer) ((z) x.a(r().d)).a()).intValue(), ((Integer) ((z) x.a(r().d)).b()).intValue()};
    }

    protected void onRestart() {
        super.onRestart();
        this.a.b();
    }

    protected void onStop() {
        this.a.c();
        super.onStop();
    }

    protected void onDestroy() {
        if (this.c != null) {
            this.c.cancel(true);
            this.c = null;
        }
        super.onDestroy();
        this.a.a(null);
        this.a = null;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        this.a.a(bundle);
        super.onSaveInstanceState(bundle);
    }

    protected View s() {
        return null;
    }

    protected View au_() {
        return null;
    }

    public boolean A() {
        return true;
    }

    protected void g(int i) {
        if (!A()) {
            super.g(i);
        } else if (this.w != null) {
            h(i);
        }
    }

    protected boolean B() {
        return true;
    }

    public float t() {
        int a = a(this.a.a()) - a(this.f);
        if (a > 0) {
            return Math.min(1.0f, Math.abs(((float) this.j) / ((float) a)));
        }
        if (C()) {
            return 0.0f;
        }
        return 1.0f;
    }

    public void a(i iVar) {
        int i = 0;
        if (iVar.f() == this.n.getCurrentItem() && iVar.b() != -1 && this.o != null && this.f != null && this.a.a() != null && this.q != null && iVar.e() != 0) {
            int i2;
            int i3;
            View a = this.a.a();
            int a2 = a(a);
            int a3 = a(this.f);
            int measuredHeight = this.q.getVisibility() != 0 ? 0 : this.q.getMeasuredHeight();
            if (this.g == null || this.g.getVisibility() != 0) {
                i2 = 0;
            } else {
                i2 = this.g.getMeasuredHeight();
            }
            if (this.h == null || this.h.getVisibility() != 0) {
                i3 = 0;
            } else {
                i3 = this.h.getMeasuredHeight();
            }
            if (iVar.b() != 0) {
                measuredHeight = (((-a2) - i2) - i3) - measuredHeight;
                this.j += iVar.a();
                if (this.j > 0) {
                    this.j = 0;
                } else if (this.j < measuredHeight) {
                    this.j = measuredHeight;
                }
            } else if (iVar.a() > 0) {
                this.j = Math.max(this.j, iVar.c());
            } else if (iVar.a() < 0) {
                this.j = Math.min(this.j, iVar.c());
            }
            i2 = (a3 - i3) - a2;
            i3 = a3 - a2;
            a2 = this.j + (a2 - a3);
            if (this.j > i2 && (iVar.b() == 0 || !this.i)) {
                this.o.setTranslationY(this.j < i3 ? (float) i3 : (float) this.j);
                this.f.setTranslationY(0.0f);
                a.setTranslationY(0.0f);
                if (this.g != null) {
                    this.g.setTranslationY(0.0f);
                }
                if (this.h != null) {
                    this.h.setTranslationY(a2 > 0 ? 0.0f : (float) a2);
                }
                this.q.setTranslationY((float) this.j);
                this.i = false;
            } else if (this.j + 150 <= i2 || (iVar.b() != 0 && this.i)) {
                this.i = true;
                if (iVar.a() > 0 && this.j > i2) {
                    this.j = i2;
                }
                if (!B()) {
                    if (iVar.b() <= 0 || !((this.f.getTranslationY() == ((float) (-a3)) || this.f.getTranslationY() == 0.0f) && iVar.e() == 2)) {
                        measuredHeight = (int) (this.f.getTranslationY() + (((float) iVar.a()) / 2.0f));
                        if (measuredHeight < (-a3)) {
                            measuredHeight = -a3;
                        }
                        if (measuredHeight <= 0) {
                            i = measuredHeight;
                        }
                        this.o.setTranslationY((float) i3);
                        this.f.setTranslationY((float) i);
                        a.setTranslationY((float) i);
                        if (this.g != null) {
                            this.g.setTranslationY((float) i);
                        }
                        if (this.h != null) {
                            this.h.setTranslationY((float) a2);
                        }
                        this.q.setTranslationY((float) (i + i2));
                    }
                }
            } else {
                this.i = true;
                this.o.setTranslationY((float) i3);
                this.f.setTranslationY(0.0f);
                a.setTranslationY(0.0f);
                if (this.g != null) {
                    this.g.setTranslationY(0.0f);
                }
                if (this.h != null) {
                    this.h.setTranslationY((float) a2);
                }
                this.q.setTranslationY((float) i2);
            }
        }
    }

    private void b(Bitmap bitmap) {
        try {
            a(bitmap);
            if (!this.b) {
                if (this.c != null) {
                    this.c.cancel(true);
                }
                this.c = new nw(this, false);
                this.c.execute(new Bitmap[]{bitmap});
            }
        } catch (OutOfMemoryError e) {
            this.z.b();
        }
    }

    protected void b(int i) {
        super.b(i);
        this.b = true;
        this.c = null;
    }

    protected int a(Resources resources) {
        return resources.getDimensionPixelSize(2131689489);
    }

    protected BaseAdapter a(List<at> list) {
        this.d = new km(list);
        return this.d;
    }

    protected String a() {
        return null;
    }

    protected String c() {
        return null;
    }

    protected void a(Drawable drawable) {
        this.a.a(drawable);
    }

    @ColorInt
    protected int b(Resources resources) {
        return 0;
    }

    protected boolean C() {
        return getResources().getBoolean(2131623939);
    }

    protected void E() {
        if (!C()) {
            this.y.b();
            this.y.a(true);
        }
    }

    protected int F() {
        return this.j;
    }
}
