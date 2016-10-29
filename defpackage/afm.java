package defpackage;

import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.twitter.android.av.ExternalActionButton;
import com.twitter.android.av.audio.h;
import com.twitter.android.av.audio.l;
import com.twitter.android.moments.ui.DoubleTapFavoriteHud;
import com.twitter.android.moments.ui.OffScreenTranslationLayout;
import com.twitter.model.core.Tweet;
import com.twitter.util.a;
import com.twitter.util.d;
import crd;

/* compiled from: Twttr */
/* renamed from: afm */
public class afm {
    private static final Interpolator a;
    private final Resources b;
    private final View c;
    private final OffScreenTranslationLayout d;
    private final ExternalActionButton e;
    private final View f;
    private final DoubleTapFavoriteHud g;
    private final afh h;
    private final int i;

    static {
        a = crd.b();
    }

    public static afm a(LayoutInflater layoutInflater, ViewGroup viewGroup, DoubleTapFavoriteHud doubleTapFavoriteHud) {
        View inflate = layoutInflater.inflate(2130969016, viewGroup, false);
        return new afm(viewGroup.getResources(), inflate, (OffScreenTranslationLayout) inflate.findViewById(2131952755), (ExternalActionButton) inflate.findViewById(2131952756), layoutInflater.inflate(2130969015, viewGroup, false), doubleTapFavoriteHud, new afh(inflate));
    }

    afm(Resources resources, View view, OffScreenTranslationLayout offScreenTranslationLayout, ExternalActionButton externalActionButton, View view2, DoubleTapFavoriteHud doubleTapFavoriteHud, afh afh) {
        this.b = resources;
        this.c = view;
        this.d = offScreenTranslationLayout;
        this.e = externalActionButton;
        this.f = view2;
        this.g = doubleTapFavoriteHud;
        this.i = resources.getInteger(2131755056);
        this.h = afh;
    }

    public void a() {
        this.d.a();
    }

    public void b() {
        this.d.b();
    }

    public void c() {
        this.h.a();
    }

    public void d() {
        this.h.b();
    }

    public void e() {
        this.h.c();
    }

    public void a(l lVar, Tweet tweet) {
        b(lVar, tweet);
        this.h.a(lVar);
    }

    @VisibleForTesting
    void b(l lVar, Tweet tweet) {
        h.a(this.e, lVar, tweet);
    }

    public View f() {
        return this.c;
    }

    public View g() {
        return this.f;
    }

    public void a(boolean z) {
        a(true, z);
    }

    public void b(boolean z) {
        a(false, z);
    }

    public boolean h() {
        return this.f.getVisibility() == 0;
    }

    private void a(boolean z, boolean z2) {
        int i;
        float f = z ? 1.0f : 0.0f;
        if (z2) {
            i = this.i;
        } else {
            i = 0;
        }
        d.b(this.f, f, i, a).setListener(new afn(this, z));
        if (z) {
            this.f.setVisibility(0);
        }
    }

    public void a(float f) {
        this.f.setTranslationX(f);
    }

    public void a(int i) {
        this.f.setVisibility(i);
    }

    public void i() {
        this.g.a();
    }

    public void j() {
        this.g.b();
    }

    public void k() {
        this.c.setKeepScreenOn(true);
    }

    public void l() {
        this.c.setKeepScreenOn(false);
    }

    public boolean m() {
        return a.a(this.b);
    }
}
