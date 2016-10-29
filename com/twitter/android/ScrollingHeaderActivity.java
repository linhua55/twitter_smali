package com.twitter.android;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.ColorInt;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.twitter.android.widget.InterceptingRelativeLayout;
import com.twitter.android.widget.SwipeProgressBarView;
import com.twitter.android.widget.SwipeRefreshObserverLayout;
import com.twitter.android.widget.UnboundedFrameLayout;
import com.twitter.android.widget.bv;
import com.twitter.android.widget.ev;
import com.twitter.android.widget.ez;
import com.twitter.android.widget.gb;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.k;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.at;
import com.twitter.library.client.navigation.w;
import com.twitter.library.widget.StatusToolBar;
import com.twitter.media.util.a;
import com.twitter.media.util.q;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.bca;
import java.util.List;

/* compiled from: Twttr */
public abstract class ScrollingHeaderActivity extends TwitterFragmentActivity implements OnItemClickListener, ob, oe, of, bv, ez, gb {
    private int A;
    private Integer B;
    private int[] C;
    private boolean D;
    private boolean E;
    private boolean K;
    private boolean L;
    private boolean M;
    private float N;
    private final Handler O;
    private InterceptingRelativeLayout P;
    private oa a;
    private View b;
    private ImageView c;
    private TextView d;
    private Animation e;
    private Animation f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    protected List<at> m;
    protected ViewPager n;
    protected UnboundedFrameLayout o;
    protected HorizontalListView p;
    protected UnboundedFrameLayout q;
    protected int r;
    protected int s;
    protected SwipeProgressBarView t;
    protected SwipeRefreshObserverLayout u;
    protected boolean v;
    protected ev w;
    protected int x;
    protected nz y;
    protected od z;

    protected abstract List<at> N_();

    protected abstract PagerAdapter a(List<at> list, ViewPager viewPager);

    protected abstract BaseAdapter a(List<at> list);

    protected abstract String a();

    protected abstract void a(Drawable drawable);

    protected abstract String c();

    public ScrollingHeaderActivity() {
        this.N = 2.0f;
        this.O = new ny(this);
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130968811);
        a.b(14);
        return a;
    }

    public void b(List<at> list) {
        if (!list.equals(this.m)) {
            this.m = list;
            this.p.setAdapter(a(this.m));
            this.n.setAdapter(a(this.m, this.n));
        }
    }

    public void b(Bundle bundle, t tVar) {
        Drawable drawable;
        this.y = new nz(this);
        this.n = (ViewPager) findViewById(2131952457);
        this.p = (HorizontalListView) findViewById(2131952459);
        this.q = (UnboundedFrameLayout) findViewById(2131952458);
        this.p.setOnItemClickListener(this);
        b(N_());
        TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{2130772132});
        this.r = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        ToolBar X = X();
        if (X instanceof StatusToolBar) {
            this.r = ((StatusToolBar) X).getStatusBarMessageHeight() + this.r;
        }
        Resources resources = getResources();
        this.s = b(resources);
        this.x = resources.getDimensionPixelSize(2131690233);
        this.A = resources.getDisplayMetrics().widthPixels;
        this.k = a(resources);
        try {
            drawable = resources.getDrawable(2130837579);
        } catch (NotFoundException e) {
            drawable = null;
        }
        this.z = new og(this, this, a(resources, drawable, new Rect(0, this.k - this.r, this.A, this.k)));
        this.o = (UnboundedFrameLayout) findViewById(2131952455);
        this.o.removeAllViews();
        this.o.setOnHeaderSizeChangedListener(this);
        this.u = (SwipeRefreshObserverLayout) findViewById(2131952456);
        this.u.setSwipeListener(this);
        int color = resources.getColor(2131886258);
        int color2 = resources.getColor(2131886212);
        this.C = new int[]{color, color2, color, color2};
        this.t = (SwipeProgressBarView) findViewById(2131952460);
        this.t.setColorScheme(this.C);
        this.b = findViewById(2131952461);
        this.c = (ImageView) findViewById(2131951696);
        this.d = (TextView) findViewById(2131951698);
        this.e = AnimationUtils.loadAnimation(this, 2131034189);
        this.f = AnimationUtils.loadAnimation(this, 2131034188);
        this.P = (InterceptingRelativeLayout) findViewById(2131952453);
        if (this.P != null) {
            this.P.setInterceptHandler(this);
        }
        if (bundle != null) {
            this.B = Integer.valueOf(bundle.getInt("STATE_HEADER_OFFSET"));
            this.D = bundle.getBoolean("STATE_HEADER_IS_PINNED");
        }
    }

    protected oc a(Resources resources, Drawable drawable, Rect rect) {
        return new oc(resources, drawable, rect);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("STATE_HEADER_OFFSET", this.g);
        bundle.putBoolean("STATE_HEADER_IS_PINNED", this.l + this.g <= 0);
    }

    protected void a(int i) {
        if (i == this.n.getCurrentItem()) {
            TwitterListFragment twitterListFragment = this.m.isEmpty() ? null : (TwitterListFragment) ((at) this.m.get(this.n.getCurrentItem())).a(getSupportFragmentManager());
            if (twitterListFragment instanceof nx) {
                ((nx) twitterListFragment).d(this.x);
            }
        }
    }

    public void b(Drawable drawable) {
        if (X() != null) {
            X().setBackgroundDrawable(drawable);
        }
    }

    public float t() {
        return this.K ? 1.0f : ((float) Math.abs(this.g)) / ((float) (this.k - this.x));
    }

    @ColorInt
    public int u() {
        return b(getResources());
    }

    protected void b(int i) {
    }

    protected int a(Resources resources) {
        return resources.getDimensionPixelSize(2131689488);
    }

    @ColorInt
    protected int b(Resources resources) {
        return ContextCompat.getColor(this, 2131886170);
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        a(i);
    }

    protected void onStop() {
        if (this.a != null) {
            this.a.cancel(true);
            this.a = null;
        }
        oa.a(this.w);
        this.w = null;
        super.onStop();
    }

    protected void onDestroy() {
        this.z.b();
        if (this.o != null) {
            this.o.removeAllViews();
        }
        if (this.P != null) {
            this.P.setInterceptHandler(null);
        }
        if (this.u != null) {
            this.u.setSwipeListener(null);
        }
        super.onDestroy();
    }

    public View v() {
        TwitterListFragment twitterListFragment = this.m.isEmpty() ? null : (TwitterListFragment) ((at) this.m.get(this.n.getCurrentItem())).a(getSupportFragmentManager());
        if (!(twitterListFragment instanceof nx) || !twitterListFragment.an()) {
            return this.n;
        }
        k ap = twitterListFragment.ap();
        ListAdapter adapter = ap.a.getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            return ((nx) twitterListFragment).K();
        }
        return ap.a;
    }

    public View w() {
        return this.u;
    }

    public boolean a(float f) {
        int[] iArr = new int[2];
        this.q.getLocationOnScreen(iArr);
        if (f < ((float) (iArr[1] + this.q.getHeight()))) {
            return true;
        }
        return false;
    }

    protected void d(int i) {
        this.i = i;
    }

    public void x() {
        if (this.E) {
            a(true);
            return;
        }
        this.O.removeMessages(1);
        this.O.sendEmptyMessageDelayed(1, 50);
    }

    public void a(boolean z) {
        this.E = false;
        this.u.a(z, false);
        this.v = z;
        if (z) {
            this.t.setVisibility(0);
            this.t.setProgressTop(this.i);
            this.t.a();
            this.c.clearAnimation();
            this.c.setVisibility(8);
            this.d.setText(2131362928);
            this.O.sendEmptyMessageDelayed(2, 1000);
            int currentItem = this.n.getCurrentItem();
            TwitterListFragment twitterListFragment = currentItem < this.m.size() ? (TwitterListFragment) ((at) this.m.get(currentItem)).a(getSupportFragmentManager()) : null;
            if (twitterListFragment == null || !twitterListFragment.ar()) {
                a(false);
                return;
            } else {
                twitterListFragment.G();
                return;
            }
        }
        this.L = false;
        this.O.removeMessages(2);
        this.t.b();
        this.t.setVisibility(8);
        this.b.setVisibility(8);
        this.j = 0;
        if (this.M) {
            X().c(16);
            this.M = false;
            Y().h();
        }
    }

    private void f() {
        X().c(16);
        this.d.setVisibility(8);
        this.M = false;
        Y().h();
    }

    public void b(float f) {
        int i;
        if (!this.L) {
            this.c.setVisibility(0);
            this.d.setVisibility(0);
            this.b.setVisibility(0);
            this.L = true;
            this.M = true;
            N().c();
            X().b(16);
            Y().h();
        }
        if (100.0f * f <= 50.0f) {
            this.E = false;
            i = 2131363457;
            if (this.j == 1) {
                this.c.clearAnimation();
                this.c.startAnimation(this.f);
                this.j = 2;
            }
            this.b.setTranslationY((float) (((int) ((((float) this.x) * f) * 2.0f)) - this.x));
        } else {
            this.E = true;
            i = 2131363458;
            if (this.j != 1) {
                this.c.clearAnimation();
                this.c.startAnimation(this.e);
                this.j = 1;
            }
            this.b.setTranslationY(0.0f);
        }
        this.d.setText(i);
    }

    public int b(w wVar) {
        ToolBar j = wVar.j();
        bca a = j.a(2131951709);
        if (a == null) {
            a = new bca(j);
            a.a(2131951709);
            a.b(false);
            a.c(10);
            a.b(2130968576);
            a.d(2131362928);
            j.a(n.b((Object) a));
        }
        if (this.M) {
            a.e();
        } else {
            a.f();
        }
        return super.b(wVar);
    }

    public void setHeaderView(View view) {
        if (this.k == this.r) {
            this.y.a(true);
        }
        d(this.k - this.r);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.o.removeAllViews();
        this.o.addView(view, layoutParams);
        this.o.setVisibility(0);
    }

    public void e() {
        if (this.k > this.r) {
            this.y.b();
            this.y.c();
        }
        int height = this.o.getHeight();
        int i = this.g;
        if (this.B != null) {
            int i2 = height - this.r;
            this.g = this.D ? -i2 : Math.max(-i2, this.B.intValue());
        }
        if (this.l != height) {
            f(height);
        }
        if (this.B != null) {
            i2 = this.g;
            this.g = i;
            b(i2, this.n.getCurrentItem());
            this.B = null;
        }
        this.z.a();
    }

    protected void a(Fragment fragment) {
        if (fragment != null && (fragment instanceof nx)) {
            ((nx) fragment).a(this.l + this.x, this.g);
        }
    }

    protected void a(Bitmap bitmap) {
        float b;
        float a;
        float f = 0.0f;
        Size a2 = Size.a(this.A, this.k);
        Size a3 = Size.a(bitmap);
        if (a3.a(a2)) {
            b = ((float) a2.b()) / ((float) a3.b());
            a = (((float) a2.a()) - (((float) a3.a()) * b)) / this.N;
        } else {
            b = ((float) a2.a()) / ((float) a3.a());
            float b2 = (((float) a2.b()) - (((float) a3.b()) * b)) / this.N;
            a = 0.0f;
            f = b2;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(b, b);
        matrix.postTranslate((float) ((int) (a + 0.5f)), (float) ((int) (f + 0.5f)));
        Config config = bitmap.getConfig();
        if (config == null) {
            config = Config.ARGB_8888;
        }
        Bitmap a4 = a.a(a2, config);
        if (a4 != null) {
            Canvas canvas = new Canvas(a4);
            Paint paint = new Paint();
            paint.setFilterBitmap(true);
            canvas.drawBitmap(bitmap, matrix, paint);
            if (this.a == null && q.a() && y()) {
                this.z.a(a4, false);
                this.a = new oa(this, this, this.z, this.h);
                this.a.execute(new Bitmap[]{a4});
                return;
            }
            this.z.a(a4, true);
        }
    }

    protected boolean y() {
        return true;
    }

    public void z() {
        this.a = null;
    }

    public void a(ev evVar) {
        this.w = evVar;
        a((Drawable) evVar);
    }

    public void e(int i) {
        this.h = i;
    }

    protected void c(float f) {
        this.N = f;
    }

    protected void f(int i) {
        this.l = i - this.r;
        for (at a : this.m) {
            a(a.a(getSupportFragmentManager()));
        }
    }

    public void b(int i, int i2) {
        if (i2 == this.n.getCurrentItem() && this.l != 0 && this.g != i) {
            this.g = i;
            this.y.a(i);
            this.K = this.k + i <= this.r;
            this.z.a();
            g(i);
            if (this.v) {
                this.t.setProgressTop(Math.max(this.i + this.g, 0));
            }
            a(i, i2);
        }
    }

    protected int j() {
        return this.r - this.k;
    }

    protected int i() {
        return this.l;
    }

    protected void b(boolean z) {
        findViewById(2131952454).setVisibility(z ? 0 : 8);
    }

    protected void a(int i, int i2) {
    }

    protected void g(int i) {
        this.o.setTranslationY((float) i);
        this.q.setTranslationY((float) i);
        if (this.w != null) {
            h(i);
        }
    }

    protected void h(int i) {
        this.h = (this.k + i) / (this.k / 5);
        if (this.h >= 5) {
            this.h = 4;
        } else if (this.h < 0) {
            this.h = 0;
        }
        this.w.a(this.h);
    }
}
