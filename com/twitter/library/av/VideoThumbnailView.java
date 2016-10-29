package com.twitter.library.av;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import bbn;
import com.google.android.exoplayer.C;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.AppConfig;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.g;
import com.twitter.media.ui.image.r;
import com.twitter.model.card.property.ImageSpec;
import defpackage.bcv;
import defpackage.bcw;
import defpackage.buf;
import rx.o;
import rx.subjects.c;

/* compiled from: Twttr */
public class VideoThumbnailView extends ViewGroup implements av, g<MediaImageView> {
    private final ay a;
    private final r b;
    private final c<Bitmap> c;
    private com.twitter.media.ui.image.config.g d;
    private MediaImageView e;
    private float f;
    private final boolean g;
    private ScaleType h;

    public VideoThumbnailView(Context context) {
        this(context, null);
    }

    public VideoThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoThumbnailView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, d(), new ay(), new r());
    }

    public VideoThumbnailView(Context context, boolean z) {
        this(context, null, 0, z, new ay(), new r());
    }

    public VideoThumbnailView(Context context, AttributeSet attributeSet, int i, boolean z, ay ayVar, r rVar) {
        super(context, attributeSet, i);
        this.f = 1.7777778f;
        this.h = ScaleType.FIT;
        this.g = z;
        this.a = ayVar;
        this.c = c.q();
        this.b = rVar;
        this.d = this.g ? d.a((float) getResources().getDimensionPixelSize(bcv.smaller_corner_radius)) : CommonRoundingStrategy.a;
    }

    public void a(String str, boolean z) {
        Context context = getContext();
        RichImageView a = this.b.a(context);
        if (z) {
            a.setOverlayDrawable(bcw.player_overlay);
        }
        this.e = this.a.a(context, a);
        this.e.setRoundingStrategy(this.d);
        this.e.setImageType("video_thumbnail");
        this.e.setScaleType(ScaleType.b);
        this.e.setFromMemoryOnly(true);
        addView(this.e, new LayoutParams(-1, -1));
        this.e.a(a.a(str));
        this.e.setOnImageLoadedListener(this);
    }

    public void setScaleType(ScaleType scaleType) {
        this.h = scaleType;
    }

    @SuppressLint({"DrawAllocation"})
    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams = getLayoutParams();
        if (layoutParams.width == -2 && AppConfig.m().a()) {
            bbn.a(new IllegalArgumentException("VideoThumbnailView should match the parent width"));
        }
        if (layoutParams.height == -2) {
            b(i, i2);
        } else {
            a(i, i2);
        }
    }

    protected void a(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.e != null) {
            int aspectRatio;
            switch (ax.a[this.h.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    aspectRatio = (int) (((float) size) / getAspectRatio());
                    break;
                default:
                    aspectRatio = Math.max(size2, (int) (((float) size) / getAspectRatio()));
                    break;
            }
            this.e.measure(MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(aspectRatio, C.ENCODING_PCM_32BIT));
        }
        setMeasuredDimension(size, size2);
    }

    protected void b(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        if (mode == 0) {
            mode = Integer.MAX_VALUE;
        } else {
            mode = MeasureSpec.getSize(i2);
        }
        mode = Math.min(mode, (int) (((float) size) / getAspectRatio()));
        if (this.e != null) {
            this.e.measure(MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(mode, C.ENCODING_PCM_32BIT));
        }
        setMeasuredDimension(size, mode);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.e != null) {
            int measuredHeight = (i4 - i2) - this.e.getMeasuredHeight();
            this.e.layout(0, measuredHeight / 2, i3 - i, (i4 - i2) - (measuredHeight / 2));
        }
    }

    public boolean c() {
        return this.e != null && this.e.g();
    }

    public View getView() {
        return this;
    }

    public void setImageSpec(ImageSpec imageSpec) {
        a(imageSpec, true);
    }

    public void a(ImageSpec imageSpec, boolean z) {
        this.f = imageSpec.d == null ? 1.0f : imageSpec.d.x / imageSpec.d.y;
        a(imageSpec.c, z);
    }

    public float getAspectRatio() {
        return this.f;
    }

    public void a() {
        if (this.e != null) {
            this.e.setFromMemoryOnly(false);
        }
    }

    public void b() {
        if (this.e != null) {
            this.e.i();
        }
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        setBackgroundDrawable(null);
        this.c.b_(imageResponse.f());
    }

    public o<Bitmap> getThumbnailBitmap() {
        return this.c;
    }

    public void setPlaceholderDrawable(Drawable drawable) {
        if (!c()) {
            setBackgroundDrawable(drawable);
        }
    }

    protected static boolean d() {
        return buf.a().g();
    }

    public void setRoundingStrategy(com.twitter.media.ui.image.config.g gVar) {
        this.d = gVar;
        if (this.e != null) {
            this.e.setRoundingStrategy(this.d);
        }
    }
}
