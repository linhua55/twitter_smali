package defpackage;

import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.twitter.android.moments.ui.fullscreen.bg;
import com.twitter.android.moments.ui.fullscreen.fx;
import com.twitter.android.moments.ui.fullscreen.gb;
import com.twitter.android.widget.bn;
import com.twitter.util.ui.q;
import cvx;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
/* renamed from: agg */
public class agg implements fx {
    private final FrameLayout b;
    private final bn c;
    private final bg d;
    private final View e;
    private final View f;
    private final View g;
    private final e<View> h;
    private final ViewGroup i;
    private final bum j;

    public static agg a(LayoutInflater layoutInflater) {
        bum bum = null;
        FrameLayout frameLayout = (FrameLayout) layoutInflater.inflate(2130969032, null);
        bn bnVar = new bn(frameLayout);
        FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(2131952783);
        View findViewById = frameLayout.findViewById(2131952613);
        if (bym.f()) {
            bum = new bum(frameLayout2);
        }
        return new agg(frameLayout, bnVar, new gb(frameLayout.getResources(), frameLayout2, findViewById), frameLayout.findViewById(2131952745), frameLayout.findViewById(2131952784), frameLayout.findViewById(2131952747), (ViewGroup) frameLayout.findViewById(2131952782), bum);
    }

    @VisibleForTesting
    agg(FrameLayout frameLayout, bn bnVar, bg bgVar, View view, View view2, View view3, ViewGroup viewGroup, bum bum) {
        this.b = frameLayout;
        this.c = bnVar;
        this.d = bgVar;
        this.e = view;
        this.f = view2;
        this.g = view3;
        this.i = viewGroup;
        this.j = bum;
        this.h = e.q();
    }

    public TextView a() {
        return this.c.b();
    }

    public bg c() {
        return this.d;
    }

    public ViewGroup d() {
        return this.i;
    }

    public void a(CharSequence charSequence) {
        q.a(this.c.b(), charSequence);
    }

    public void b(CharSequence charSequence) {
        this.c.c().setText(charSequence);
    }

    public void c(CharSequence charSequence) {
        this.c.d().setText(charSequence);
    }

    public void a(boolean z) {
        this.e.setVisibility(z ? 0 : 8);
    }

    public void a(OnClickListener onClickListener) {
        this.f.setOnClickListener(onClickListener);
    }

    public FrameLayout e() {
        return this.b;
    }

    public bum f() {
        return this.j;
    }

    public void g() {
        this.h.b_(this.g);
    }

    public o<Integer> b() {
        return cvx.a(this.g).d(this.g).e(this.h).g(new agh(this)).g();
    }
}
