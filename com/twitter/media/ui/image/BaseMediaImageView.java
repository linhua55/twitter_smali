package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import com.twitter.media.request.ImageRequester;
import com.twitter.media.request.ImageRequester.Factory;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.b;
import com.twitter.media.request.c;
import com.twitter.media.request.i;
import com.twitter.media.request.process.a;
import com.twitter.media.ui.k;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.j;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import defpackage.cwf;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
public abstract class BaseMediaImageView<T extends BaseMediaImageView<T>> extends AspectRatioFrameLayout implements c, h, s {
    private static final a a;
    protected static final ScaleType b;
    private static Factory h;
    protected ScaleType d;
    protected Drawable e;
    b f;
    boolean g;
    private final ImageRequester i;
    private i<ImageResponse> j;
    private boolean k;
    private boolean l;
    private com.twitter.media.request.a m;
    private Future<?> n;
    private boolean o;
    @DrawableRes
    private int p;
    private g<T> q;
    private final e<ImageResponse> r;
    private f<T> s;
    private boolean t;
    private boolean u;

    /* compiled from: Twttr */
    public enum ScaleType {
        FIT(com.twitter.media.decoder.ImageDecoder.ScaleType.a),
        FILL(com.twitter.media.decoder.ImageDecoder.ScaleType.c),
        CENTER_INSIDE(com.twitter.media.decoder.ImageDecoder.ScaleType.a);
        
        public final com.twitter.media.decoder.ImageDecoder.ScaleType decoderScaleType;

        private ScaleType(com.twitter.media.decoder.ImageDecoder.ScaleType scaleType) {
            this.decoderScaleType = scaleType;
        }
    }

    protected abstract void a(Drawable drawable);

    public abstract Size getImageSize();

    public abstract ViewPropertyAnimator getImageViewAnimator();

    static {
        b = ScaleType.FIT;
        a = new a();
    }

    protected BaseMediaImageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null);
    }

    protected BaseMediaImageView(Context context, AttributeSet attributeSet, int i, ImageRequester imageRequester) {
        this(context, attributeSet, i, imageRequester, b);
    }

    protected BaseMediaImageView(Context context, AttributeSet attributeSet, int i, ImageRequester imageRequester, ScaleType scaleType) {
        super(context, attributeSet, i);
        this.d = b;
        this.o = true;
        this.r = e.q();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.BaseMediaImageView, i, 0);
        this.e = obtainStyledAttributes.getDrawable(k.BaseMediaImageView_defaultDrawable);
        this.p = obtainStyledAttributes.getResourceId(k.BaseMediaImageView_errorDrawable, 0);
        if (isInEditMode()) {
            this.i = ImageRequester.a;
        } else {
            if (imageRequester == null) {
                imageRequester = a(context);
            }
            this.i = imageRequester;
            this.i.a(obtainStyledAttributes.getString(k.BaseMediaImageView_imageType));
        }
        this.k = obtainStyledAttributes.getBoolean(k.BaseMediaImageView_updateOnResize, false);
        int i2 = obtainStyledAttributes.getInt(k.BaseMediaImageView_scaleType, -1);
        ScaleType[] values = ScaleType.values();
        if (i2 >= 0 && i2 < values.length) {
            scaleType = values[i2];
        }
        this.d = scaleType;
        obtainStyledAttributes.recycle();
    }

    public boolean g() {
        return this.u;
    }

    public com.twitter.media.request.a getImageRequest() {
        return this.i.a();
    }

    public boolean a(b bVar) {
        return a(bVar, true);
    }

    public boolean a(b bVar, boolean z) {
        if (isInEditMode()) {
            return false;
        }
        this.f = bVar;
        if (bVar == null) {
            this.g = false;
            i();
            if (!z) {
                return false;
            }
            k();
            return false;
        }
        boolean a = this.i.a(b(bVar));
        if (a) {
            this.g = false;
            if (z) {
                k();
            }
        }
        aG_();
        return a;
    }

    public void setUpdateOnResize(boolean z) {
        this.k = z;
    }

    public void setFromMemoryOnly(boolean z) {
        if (this.l != z) {
            this.l = z;
            if (!z) {
                n();
            }
        }
    }

    public void setImageType(String str) {
        this.i.a(str);
    }

    public void setScaleType(ScaleType scaleType) {
        if (this.d != scaleType) {
            this.d = scaleType;
            this.g = false;
            i();
            n();
        }
    }

    public void setDefaultDrawable(Drawable drawable) {
        if (this.e != drawable) {
            this.e = drawable;
            if (this.o) {
                k();
            }
        }
    }

    public void setErrorDrawableId(int i) {
        this.p = i;
    }

    public Drawable getDefaultDrawable() {
        return this.e;
    }

    public void setOnImageLoadedListener(g<T> gVar) {
        this.q = gVar;
    }

    public o<ImageResponse> h() {
        return this.r;
    }

    public void setCroppingRectangleProvider(f<T> fVar) {
        this.s = fVar;
    }

    public void aG_() {
        if (!this.u) {
            this.g = false;
        }
        n();
    }

    public void f() {
        k();
        i();
    }

    public boolean i() {
        if (this.n != null) {
            this.n.cancel(false);
            this.n = null;
        }
        this.m = null;
        return this.i.c();
    }

    public void a(ImageResponse imageResponse) {
        j a = ((a) com.twitter.util.object.e.b(((com.twitter.media.request.a) imageResponse.e()).t(), a)).a(getContext(), imageResponse);
        this.n = a;
        a.a(new b(this, imageResponse, a));
    }

    void a(ImageResponse imageResponse, j<Drawable> jVar) {
        if (((com.twitter.media.request.a) imageResponse.e()).a(this.m)) {
            this.n = null;
            this.m = null;
            if (!jVar.isCancelled()) {
                try {
                    a(imageResponse, (Drawable) jVar.get());
                } catch (InterruptedException e) {
                    b(imageResponse);
                } catch (ExecutionException e2) {
                    b(imageResponse);
                }
            }
        }
    }

    protected void a(ImageResponse imageResponse, Drawable drawable) {
        boolean z = true;
        this.g = true;
        this.o = false;
        this.t = imageResponse.c();
        this.u = true;
        if (drawable != null) {
            if (imageResponse.g() != ResourceSource.b) {
                z = false;
            }
            a(drawable, z);
        }
        c(imageResponse);
    }

    protected void b(ImageResponse imageResponse) {
        this.g = !this.l;
        if (this.g) {
            this.o = false;
            this.t = imageResponse.c();
            this.u = false;
            if (this.p != 0) {
                a(this.p);
            } else {
                k();
            }
            c(imageResponse);
        }
    }

    private void c(ImageResponse imageResponse) {
        if (this.j != null) {
            this.j.a(imageResponse);
        }
        if (this.q != null) {
            this.q.a((BaseMediaImageView) ObjectUtils.a((Object) this), imageResponse);
        }
        this.r.b_(imageResponse);
        m();
    }

    protected void onMeasure(int i, int i2) {
        Object obj = 1;
        LayoutParams layoutParams = getLayoutParams();
        Object obj2 = layoutParams.width == -2 ? 1 : null;
        if (layoutParams.height != -2) {
            obj = null;
        }
        if ((obj2 == null && r1 == null) || (((obj2 == null || r1 == null) && this.c > 0.0f) || MeasureSpec.getSize(i) == 0 || MeasureSpec.getSize(i2) == 0)) {
            super.onMeasure(i, i2);
            return;
        }
        throw new IllegalStateException("Image view measures can't be determined");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        n();
    }

    public void j() {
        measure(MeasureSpec.makeMeasureSpec(0, 1073741824), MeasureSpec.makeMeasureSpec(0, 1073741824));
        layout(0, 0, 0, 0);
        requestLayout();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
        j();
    }

    protected final b getRequestBuilder() {
        return this.f;
    }

    protected void a(@DrawableRes int i) {
        a(getResources().getDrawable(i));
    }

    protected void b(Drawable drawable) {
        a(drawable);
    }

    protected void a(Drawable drawable, boolean z) {
        a(drawable);
    }

    protected void k() {
        b(this.e);
        this.u = false;
        this.g = false;
        this.o = true;
        this.t = false;
    }

    protected com.twitter.media.request.a b(b bVar) {
        if (bVar != null) {
            ((b) bVar.a(getImageSize()).e(this.l)).a(this.d.decoderScaleType);
            if (this.s != null) {
                bVar.a(this.s.a((BaseMediaImageView) ObjectUtils.a((Object) this)));
            }
            com.twitter.media.request.a a = bVar.a();
            this.j = a.E();
            a.a((i) this);
            return a;
        }
        this.j = null;
        return null;
    }

    protected void l() {
    }

    protected void m() {
    }

    protected boolean a(com.twitter.media.request.a aVar) {
        return this.g;
    }

    void n() {
        boolean z = true;
        if (getVisibility() != 8) {
            Size imageSize = getImageSize();
            if (!imageSize.c()) {
                com.twitter.media.request.a a = this.i.a();
                if (a != null) {
                    boolean z2;
                    boolean a2 = a(a);
                    if (a2 || this.i.b()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2 || (this.k && !imageSize.d(a.f()))) {
                        if (this.n != null) {
                            this.n.cancel(false);
                            this.n = null;
                        }
                        this.m = b(this.f);
                        l();
                        this.i.a(this.m);
                        ImageRequester imageRequester = this.i;
                        if (this.u || this.l) {
                            z = false;
                        }
                        imageRequester.b(z);
                    } else if (a2 && this.t) {
                        o();
                    }
                }
            }
        }
    }

    public void o() {
        if (this.f != null) {
            boolean z = this.f.n;
            this.f.c(false);
            com.twitter.media.request.a a = this.f.a();
            this.f.c(z);
            new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new d(this, this.i, a)).a().b(new f().a(com.twitter.util.concurrent.i.b).a(new e(this)));
        }
    }

    public ImageRequester getImageRequester() {
        com.twitter.util.j.d();
        return this.i;
    }

    public boolean r() {
        return g();
    }

    public static void setImageRequesterFactory(Factory factory) {
        h = factory;
    }

    private static ImageRequester a(Context context) {
        if (h == null) {
            h = (Factory) cwf.a().c(Factory.class);
            if (h == null) {
                throw new IllegalStateException("A default ImageRequester.Factory is not available.");
            }
        }
        return (ImageRequester) h.a(context);
    }
}
