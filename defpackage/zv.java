package defpackage;

import android.animation.ValueAnimator;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView.ScaleType;
import com.facebook.common.references.a;
import com.facebook.datasource.d;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.twitter.library.media.fresco.FrescoMediaImageView;
import com.twitter.library.media.manager.TwitterImageRequester;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.util.g;
import com.twitter.ui.widget.ClippedImageView;
import com.twitter.util.ab;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import com.twitter.util.ui.r;
import cqm;
import cu;
import gg;
import gh;
import java.util.ArrayList;
import java.util.List;
import zw;
import zx;
import zy;
import zz;

/* compiled from: Twttr */
/* renamed from: zv */
public class zv extends cqj {
    private final FragmentActivity a;
    private final ViewGroup b;
    private final cqm c;
    private final Size d;
    private final Drawable e;
    private final ClippedImageView f;
    private final Interpolator g;
    private final List<String> h;
    private final Size i;
    private final c j;
    private final boolean k;
    private float l;
    private float m;
    private float n;
    private float o;
    private cqk p;
    private a<gh> q;

    public static zv a(FragmentActivity fragmentActivity, Intent intent, ViewGroup viewGroup, Drawable drawable) {
        return new zv(fragmentActivity, cql.b(intent), intent.getStringArrayListExtra("media_url"), (Size) intent.getParcelableExtra("media_size"), (c) ab.a(intent, "media_crop", c.a), viewGroup, drawable, intent.getBooleanExtra("fresco", false));
    }

    public static void a(Intent intent, BaseMediaImageView baseMediaImageView) {
        com.twitter.media.request.a imageRequest = baseMediaImageView.getImageRequest();
        intent.putExtra("media_size", imageRequest.f());
        ab.a(intent, "media_crop", imageRequest.j(), c.a);
        if (baseMediaImageView instanceof FrescoMediaImageView) {
            intent.putExtra("fresco", true);
            ImageRequest frescoImageRequest = ((FrescoMediaImageView) baseMediaImageView).getFrescoImageRequest();
            String uri = frescoImageRequest != null ? frescoImageRequest.b().toString() : BuildConfig.VERSION_NAME;
            intent.putStringArrayListExtra("media_url", CollectionUtils.d(uri));
            return;
        }
        intent.putStringArrayListExtra("media_url", new ArrayList(imageRequest.b()));
    }

    protected zv(FragmentActivity fragmentActivity, cqm cqm, List<String> list, Size size, c cVar, ViewGroup viewGroup, Drawable drawable, boolean z) {
        this.g = new OvershootInterpolator(0.8f);
        this.a = fragmentActivity;
        this.b = viewGroup;
        this.h = list;
        this.i = size;
        this.j = cVar;
        this.c = cqm;
        this.e = drawable;
        this.f = new ClippedImageView(this.a);
        this.f.setScaleType(ScaleType.FIT_CENTER);
        this.b.addView(this.f);
        this.d = r.b(this.a);
        this.k = z;
    }

    public void a(cqk cqk) {
        this.p = cqk;
        b a = ((b) new b((String) this.h.get(0)).a(this.i).a(new g(this.h)).f(false)).a(BaseMediaImageView.ScaleType.FIT.decoderScaleType);
        if (this.k) {
            a(a.a());
        } else {
            a(a);
        }
    }

    private void a(b bVar) {
        TwitterImageRequester twitterImageRequester = new TwitterImageRequester(this.a);
        bVar.a((i) new zw(this));
        twitterImageRequester.a(bVar.a());
        twitterImageRequester.b(false);
    }

    private void a(com.twitter.media.request.a aVar) {
        d a = cu.c().a(ImageRequestBuilder.a(Uri.parse((String) this.h.get(0))).l(), new com.twitter.library.media.fresco.g(aVar));
        try {
            int i;
            this.q = (a) a.d();
            if (this.q != null) {
                gh ghVar = (gh) this.q.a();
                if (ghVar == null || !(ghVar instanceof gg)) {
                    c();
                } else {
                    a(((gg) ghVar).f());
                    i = 1;
                    a.h();
                    if (i == 0) {
                        this.e.setAlpha(MotionEventCompat.ACTION_MASK);
                        if (this.p != null) {
                            this.p.a();
                        }
                    }
                }
            }
            i = 0;
            a.h();
            if (i == 0) {
                this.e.setAlpha(MotionEventCompat.ACTION_MASK);
                if (this.p != null) {
                    this.p.a();
                }
            }
        } catch (Throwable th) {
            a.h();
        }
    }

    private void a(Bitmap bitmap) {
        int b;
        int width;
        if (((float) bitmap.getWidth()) / ((float) bitmap.getHeight()) < this.d.e()) {
            b = this.d.b();
            width = (bitmap.getWidth() * b) / bitmap.getHeight();
        } else {
            width = this.d.a();
            b = (bitmap.getHeight() * width) / bitmap.getWidth();
        }
        LayoutParams layoutParams = new FrameLayout.LayoutParams(width, b);
        layoutParams.gravity = 17;
        this.f.setLayoutParams(layoutParams);
        this.f.setImageBitmap(bitmap);
        this.b.getViewTreeObserver().addOnPreDrawListener(new zx(this));
    }

    protected void a(ClippedImageView clippedImageView, cqm cqm, cqk cqk) {
        a(clippedImageView, cqm);
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, MotionEventCompat.ACTION_MASK});
        ofInt.setDuration(300);
        ofInt.addUpdateListener(new zy(this));
        ofInt.start();
        ViewCompat.animate(clippedImageView).withLayer().setDuration(300).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setInterpolator(this.g).withEndAction(new zz(this, cqk)).start();
        this.f.a(300);
    }

    public void ax_() {
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{MotionEventCompat.ACTION_MASK, 0});
        ofInt.setDuration(300);
        ofInt.addUpdateListener(new aaa(this));
        ofInt.start();
        ViewCompat.animate(this.f).withLayer().setDuration(300).scaleX(this.l).scaleY(this.m).translationX(this.n).translationY(this.o).setInterpolator(this.g).withEndAction(new aab(this)).start();
        this.f.b(300);
    }

    private void a(ClippedImageView clippedImageView, cqm cqm) {
        int width = clippedImageView.getWidth();
        int height = clippedImageView.getHeight();
        int[] iArr = new int[2];
        clippedImageView.getLocationOnScreen(iArr);
        int i = cqm.a - iArr[0];
        int i2 = cqm.b - iArr[1];
        this.n = (float) i;
        this.o = (float) i2;
        float f = ((float) width) / ((float) height);
        i = cqm.c;
        i2 = (int) (((float) i) / f);
        if (i2 < cqm.d) {
            i2 = cqm.d;
            i = (int) (((float) i2) * f);
        }
        this.l = ((float) i) / ((float) width);
        this.m = ((float) i2) / ((float) height);
        if (this.j == null || this.j.b()) {
            width = (int) (((float) cqm.c) / this.l);
            height = (int) (((float) cqm.d) / this.m);
            int width2 = (clippedImageView.getWidth() - width) / 2;
            int height2 = (clippedImageView.getHeight() - height) / 2;
            clippedImageView.setClippingBounds(new Rect(width2, height2, width + width2, height + height2));
            this.n -= (float) Math.abs((i - cqm.c) / 2);
            this.o -= (float) Math.abs((i2 - cqm.d) / 2);
        } else {
            Rect a = this.j.a(Size.a((View) clippedImageView));
            clippedImageView.setClippingBounds(a);
            this.n -= ((float) a.left) * this.l;
            this.o -= ((float) a.top) * this.m;
        }
        clippedImageView.setPivotX(0.0f);
        clippedImageView.setPivotY(0.0f);
        clippedImageView.setScaleX(this.l);
        clippedImageView.setScaleY(this.m);
        clippedImageView.setTranslationX(this.n);
        clippedImageView.setTranslationY(this.o);
    }

    public View b() {
        return this.f;
    }

    public void c() {
        a.c(this.q);
        this.q = null;
    }
}
