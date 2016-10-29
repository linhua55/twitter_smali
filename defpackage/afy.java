package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.moments.ui.fullscreen.ScaleToFitFrameLayout;
import com.twitter.android.moments.ui.fullscreen.fx;
import com.twitter.android.moments.ui.fullscreen.he;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.g;
import com.twitter.model.moments.k;
import com.twitter.moments.core.ui.widget.capsule.DrawableAwareImageView;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import cvx;
import rx.o;
import rx.w;

/* compiled from: Twttr */
/* renamed from: afy */
public class afy implements agf, ahh, ahm {
    private final MediaImageView a;
    private final ViewGroup b;
    private final View c;
    private final ProgressBar d;
    private final TextView e;
    private final afc f;
    private final afu g;
    private final agn h;

    public static afy a(LayoutInflater layoutInflater, k kVar, fx fxVar, boolean z) {
        if (kVar.g) {
            return afy.a(layoutInflater, 2130969035, fxVar.b(), z);
        }
        return afy.a(layoutInflater, 2130969020, z);
    }

    public static afy a(LayoutInflater layoutInflater, @LayoutRes int i, boolean z) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(i, null, false);
        MediaImageView mediaImageView = (MediaImageView) viewGroup.findViewById(2131952767);
        afc afc = new afc(viewGroup.getContext(), new afa(mediaImageView));
        return new afy(viewGroup, mediaImageView, afc, new agb(afc, new afg(), mediaImageView), agn.a(viewGroup, viewGroup.getContext(), afc, z), o.c());
    }

    public static afy a(LayoutInflater layoutInflater, @LayoutRes int i, o<Integer> oVar, boolean z) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(i, null, false);
        MediaImageView mediaImageView = (MediaImageView) viewGroup.findViewById(2131952767);
        Context context = mediaImageView.getContext();
        View view = (ScaleToFitFrameLayout) viewGroup.findViewById(2131952787);
        afc a = afc.a(view);
        return new afy(viewGroup, view, a, new he(mediaImageView, view).a(), agn.a(viewGroup, context, a, z), oVar);
    }

    private afy(ViewGroup viewGroup, View view, afc afc, afu afu, agn agn, o<Integer> oVar) {
        this.b = viewGroup;
        this.c = view;
        this.g = afu;
        this.a = (MediaImageView) this.b.findViewById(2131952767);
        if (this.a.getImageView() instanceof DrawableAwareImageView) {
            this.f = afc;
            this.d = (ProgressBar) this.b.findViewById(2131952800);
            this.e = (TextView) this.b.findViewById(2131952799);
            this.e.setText(2131363099);
            this.h = agn;
            cvx.a(this.a).b(new afz(this));
            oVar.b(new aga(this));
            return;
        }
        throw new IllegalArgumentException("MediaImageView internal view type must be DrawableAwareImageView");
    }

    public ViewGroup a() {
        return this.b;
    }

    public MediaImageView b() {
        return this.a;
    }

    public void a(b bVar) {
        this.a.setScaleType(ScaleType.FIT);
        this.a.setScaleFactor(2.0f);
        this.a.a(bVar);
    }

    public w<ImageResponse> c() {
        return this.a.h().d(1).b();
    }

    public float d() {
        return r.a(this.b.getContext()).e();
    }

    public View e() {
        return this.a;
    }

    public ProgressBar f() {
        return this.d;
    }

    public TextView g() {
        return this.e;
    }

    public void a(g gVar) {
        this.a.setOnImageLoadedListener(gVar);
    }

    public void a(Size size, Rect rect) {
        this.g.a(this, size, rect);
    }

    public void a(int i) {
        r.a(this.c, i);
    }

    public void a(aez aez) {
        this.f.a(aez);
    }

    public w<Integer> a(Bitmap bitmap) {
        return this.h.a(bitmap);
    }

    public void a(boolean z) {
        this.f.a(z);
        this.h.a();
    }

    public void b(boolean z) {
        this.f.b(z);
        this.h.b();
    }

    public void a(float f) {
        this.f.b(f);
    }

    public void c(boolean z) {
        this.g.a((ahh) this, z);
    }
}
