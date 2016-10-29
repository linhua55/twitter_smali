package com.twitter.android.media.stickers;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import buv;
import bxv;
import cjw;
import com.google.android.exoplayer.C;
import com.twitter.android.GalleryActivity;
import com.twitter.android.media.imageeditor.stickers.c;
import com.twitter.android.media.stickers.timeline.StickerTimelineActivity;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.MultiTouchImageView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.g;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.cjs;
import defpackage.cjv;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class StickerMediaView extends FrameLayout implements g<MediaImageView> {
    private final Context a;
    private List<cjs> b;
    private List<StickerMediaImageView> c;
    private List<StickerSheenView> d;
    private List<cjv> e;
    private h f;
    private MultiTouchImageView g;
    private Set<String> h;
    private long i;
    private boolean j;
    private boolean k;

    public StickerMediaView(Context context) {
        this(context, null);
    }

    public StickerMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context;
        this.b = n.g();
        this.c = n.g();
        this.d = n.g();
        this.e = n.g();
        this.h = new HashSet();
        this.j = false;
        this.k = false;
    }

    public void a(List<cjs> list, bxv bxv, MultiTouchImageView multiTouchImageView) {
        a();
        this.g = multiTouchImageView;
        if (!list.isEmpty() && !this.j) {
            this.b = list;
            a(bxv);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt instanceof StickerMediaImageView) {
                b((StickerMediaImageView) childAt);
            }
        }
    }

    public void a() {
        this.i = PlatformContext.f().a().b();
    }

    public void a(boolean z) {
        if (this.c.isEmpty()) {
            if (this.j || this.e.isEmpty()) {
                this.k = true;
            } else {
                a(this.e);
            }
        } else if (this.g == null || !this.g.g()) {
            long b = PlatformContext.f().a().b() - this.i;
            if (z) {
                b = 500 - b;
            } else {
                b = 300 - b;
            }
            postDelayed(new c(this), Math.max(0, b));
        }
    }

    private StickerSheenView a(StickerMediaImageView stickerMediaImageView) {
        int indexOf = this.c.indexOf(stickerMediaImageView);
        return (indexOf < 0 || indexOf >= this.d.size()) ? null : (StickerSheenView) this.d.get(indexOf);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public void b() {
        this.j = false;
        this.c = n.g();
        this.d = n.g();
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt instanceof StickerMediaImageView) {
                ((StickerMediaImageView) childAt).a(null);
            }
            if ((childAt instanceof StickerMediaImageView) || (childAt instanceof StickerSheenView)) {
                removeView(childAt);
            }
        }
    }

    public void c() {
        for (StickerMediaImageView stickerMediaImageView : this.c) {
            stickerMediaImageView.b();
            StickerSheenView a = a(stickerMediaImageView);
            if (a != null) {
                a.c();
            }
        }
        if (this.f != null) {
            this.f.b();
        }
    }

    public boolean a(int i, int i2) {
        if (!buv.e()) {
            return false;
        }
        if (i < getPaddingLeft() || i > getWidth() - getPaddingRight() || i2 < getPaddingTop() || i2 > getHeight() - getPaddingBottom()) {
            return false;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0 && (childAt instanceof StickerMediaImageView)) {
                Matrix matrix = new Matrix();
                matrix.setRotate(-((StickerMediaImageView) childAt).getStickerTag().d, (float) (childAt.getLeft() + (childAt.getWidth() / 2)), (float) (childAt.getTop() + (childAt.getHeight() / 2)));
                float[] fArr = new float[]{(float) i, (float) i2};
                matrix.mapPoints(fArr);
                int i3 = (int) fArr[0];
                int i4 = (int) fArr[1];
                if (i3 >= childAt.getLeft() && i3 <= childAt.getRight() && i4 >= childAt.getTop() && i4 <= childAt.getBottom() && a(childAt, i3, i4) > 0) {
                    long j = ((StickerMediaImageView) childAt).getStickerTag().a;
                    c();
                    Intent intent = new Intent(this.a, StickerTimelineActivity.class);
                    intent.putExtra("sticker_id", j);
                    this.a.startActivity(intent);
                    c.a(bg.a().c().g());
                    return true;
                }
            }
        }
        return false;
    }

    private int a(View view, int i, int i2) {
        Drawable drawable = ((StickerMediaImageView) view).getImageView().getDrawable();
        if (drawable == null || !(drawable instanceof BitmapDrawable)) {
            return -1;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        float width = ((float) bitmap.getWidth()) / ((float) view.getWidth());
        return Color.alpha(bitmap.getPixel(Math.min(Math.round(((float) (i - view.getLeft())) * width), bitmap.getWidth() - 1), Math.min(Math.round(width * ((float) (i2 - view.getTop()))), bitmap.getHeight() - 1)));
    }

    private void b(StickerMediaImageView stickerMediaImageView) {
        int paddingLeft = getPaddingLeft();
        int measuredWidth = (getMeasuredWidth() - paddingLeft) - getPaddingRight();
        cjv stickerTag = stickerMediaImageView.getStickerTag();
        Size a = stickerTag.a(measuredWidth);
        int a2 = a.a();
        int b = a.b();
        stickerMediaImageView.measure(MeasureSpec.makeMeasureSpec(a2, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(b, C.ENCODING_PCM_32BIT));
        paddingLeft += Math.round(stickerTag.b(measuredWidth) - ((float) (a2 / 2)));
        measuredWidth = Math.round(stickerTag.c(measuredWidth) - ((float) (b / 2))) + getPaddingTop();
        stickerMediaImageView.layout(paddingLeft, measuredWidth, paddingLeft + a2, measuredWidth + b);
        StickerSheenView a3 = a(stickerMediaImageView);
        if (a3 != null) {
            a3.measure(MeasureSpec.makeMeasureSpec(a2, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(b, C.ENCODING_PCM_32BIT));
            a3.layout(paddingLeft, measuredWidth, a2 + paddingLeft, b + measuredWidth);
        }
    }

    private void a(bxv bxv) {
        this.j = true;
        bxv.a(new d(this));
    }

    void a(Map<Long, cjw> map) {
        if (!CollectionUtils.b(map)) {
            this.e = CollectionUtils.a(this.b, new e(this, map));
            if (this.k) {
                this.k = false;
                a(this.e);
            }
        }
    }

    private void a(List<cjv> list) {
        this.h = new HashSet();
        int size = list.size();
        n a = n.a(size);
        n a2 = n.a(size);
        for (cjv cjv : list) {
            StickerMediaImageView stickerMediaImageView = new StickerMediaImageView(this.a, cjv);
            stickerMediaImageView.setTag(String.valueOf(list.indexOf(cjv)) + ':' + String.valueOf(cjv.a));
            stickerMediaImageView.setScaleMode(1);
            stickerMediaImageView.a(a.a(cjv.c.c.c));
            stickerMediaImageView.setScaleType(ScaleType.a);
            stickerMediaImageView.setRotation(cjv.d);
            stickerMediaImageView.setVisibility(4);
            stickerMediaImageView.setOnImageLoadedListener(this);
            addView(stickerMediaImageView);
            View stickerSheenView = new StickerSheenView(this.a);
            stickerSheenView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            stickerSheenView.setRotation(cjv.d);
            addView(stickerSheenView);
            LayoutParams layoutParams = stickerMediaImageView.getLayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
            a.c(stickerMediaImageView);
            layoutParams = stickerSheenView.getLayoutParams();
            layoutParams.width = 0;
            layoutParams.height = 0;
            a2.c(stickerSheenView);
        }
        this.c = (List) a.q();
        this.d = (List) a2.q();
        if (!this.c.isEmpty() && (this.a instanceof GalleryActivity)) {
            this.f = new h(this.a, ((GalleryActivity) this.a).getSupportFragmentManager(), (String) ((StickerMediaImageView) this.c.get(this.c.size() - 1)).getTag());
        }
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        if ((mediaImageView instanceof StickerMediaImageView) && imageResponse.d()) {
            this.h.add((String) mediaImageView.getTag());
            StickerSheenView a = a((StickerMediaImageView) mediaImageView);
            if (a != null) {
                a.setImageBitmap((Bitmap) imageResponse.f());
            }
            if (this.c.size() == this.h.size()) {
                a(true);
            }
        }
    }
}
