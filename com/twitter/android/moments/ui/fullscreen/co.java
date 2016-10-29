package com.twitter.android.moments.ui.fullscreen;

import agf;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.d;
import com.twitter.util.z;
import crd;

/* compiled from: Twttr */
public class co implements z<PageLoadingEvent> {
    private static final Interpolator c;
    protected final View a;
    protected final TextView b;
    private boolean d;
    private boolean e;
    private final ProgressBar f;
    private final bn<String, PageLoadingEvent> g;
    private final int h;
    private final int i;
    private final int j;
    private ObjectAnimator k;

    public /* synthetic */ void a(Object obj) {
        b((PageLoadingEvent) obj);
    }

    static {
        c = crd.b();
    }

    public co(View view, ProgressBar progressBar, TextView textView, int i, int i2, int i3, String str, bn<String, PageLoadingEvent> bnVar) {
        this.a = view;
        this.f = progressBar;
        this.f.setMax(ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
        this.b = textView;
        this.h = i;
        this.i = i2;
        this.j = i3;
        this.g = bnVar;
        bnVar.a(str, this);
    }

    public co(agf agf, Resources resources, String str, bn<String, PageLoadingEvent> bnVar) {
        this(agf.e(), agf.f(), agf.g(), resources.getInteger(2131755058), resources.getInteger(2131755059), resources.getInteger(2131755057), str, bnVar);
    }

    protected void d() {
        if (!this.e) {
            this.f.setVisibility(0);
            a(800, this.h, this.i);
        }
        this.d = true;
    }

    boolean e() {
        return this.e;
    }

    void c() {
        if (this.d && !e()) {
            a(ExoPlayerImplInternal.MSG_SEEK_COMPLETE, this.j / 2, 0);
            f();
            d.a(this.a, this.j, 1.05f, c);
        }
        this.e = true;
    }

    void a(PageLoadingEvent pageLoadingEvent) {
        f();
        this.b.setVisibility(0);
    }

    void f() {
        d.a(this.f, this.j, c);
    }

    public void g() {
        this.g.b(this);
    }

    private void a(int i, int i2, int i3) {
        if (this.k != null) {
            this.k.cancel();
        }
        this.k = ObjectAnimator.ofInt(this.f, "progress", new int[]{i});
        this.k.setStartDelay((long) i3);
        this.k.setDuration((long) i2);
        this.k.setInterpolator(c);
        this.k.start();
    }

    public void b(PageLoadingEvent pageLoadingEvent) {
        switch (cp.a[pageLoadingEvent.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                d();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                c();
            case Util.TYPE_OTHER /*3*/:
                a(pageLoadingEvent);
            default:
        }
    }
}
