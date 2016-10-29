package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.twitter.library.media.widget.VideoDurationView;
import com.twitter.media.decoder.ImageDecoder.ScaleType;
import com.twitter.media.model.VideoFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.m;

/* compiled from: Twttr */
public class VideoSegmentListItemView extends AspectRatioFrameLayout implements m {
    private Animation a;
    private Animation b;
    private int d;
    private ck e;
    private View f;
    private View g;
    private ImageView h;
    private MediaImageView i;
    private RichImageView j;
    private VideoDurationView k;
    private boolean l;
    private boolean m;
    private VideoFile n;
    private boolean o;
    private Bitmap p;
    private int q;
    private int r;
    private int s;

    public VideoSegmentListItemView(Context context) {
        super(context);
        this.s = 0;
        b();
    }

    public VideoSegmentListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = 0;
        b();
    }

    public VideoSegmentListItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = 0;
        b();
    }

    private void b() {
        Resources resources = getResources();
        this.a = AnimationUtils.loadAnimation(getContext(), 2131034131);
        this.b = AnimationUtils.loadAnimation(getContext(), 2131034132);
        this.a.setAnimationListener(new cd(this));
        this.b.setAnimationListener(new ce(this));
        this.d = resources.getDimensionPixelSize(2131690644);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f = findViewById(2131953133);
        this.e = new ck(getContext());
        this.f.setBackgroundDrawable(this.e);
        this.g = this.f.findViewById(2131953376);
        this.h = (ImageView) this.f.findViewById(2131953377);
        this.i = (MediaImageView) findViewById(2131952522);
        this.j = (RichImageView) this.i.findViewById(2131951669);
        this.k = (VideoDurationView) findViewById(2131953378);
        this.i.setOnImageLoadedListener(this);
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        this.p = (Bitmap) imageResponse.f();
        this.j.invalidate();
    }

    public void setStatus(int i) {
        int i2 = getResources().getConfiguration().orientation;
        if (this.s != i || this.r != i2) {
            this.s = i;
            this.r = i2;
            if (i == 4) {
                this.f.setVisibility(0);
                this.g.setVisibility(0);
                this.h.setVisibility(8);
                this.k.setVisibility(8);
                this.i.setVisibility(8);
                this.g.startAnimation(AnimationUtils.loadAnimation(getContext(), 2131034135));
            } else {
                this.g.clearAnimation();
                if (i == 3) {
                    this.f.setVisibility(0);
                    this.h.setVisibility(0);
                    this.g.setVisibility(8);
                    this.k.setVisibility(8);
                    this.i.setVisibility(8);
                    this.h.setImageDrawable(getResources().getDrawable(2130840185));
                } else {
                    this.f.setVisibility(8);
                    this.i.setVisibility(0);
                }
            }
            invalidate();
        }
    }

    int getStatus() {
        return this.s;
    }

    public void a(boolean z, boolean z2) {
        float f = 0.0f;
        if (z != this.l || z2 != this.m) {
            float f2;
            float f3;
            float f4;
            if (z) {
                f2 = (float) this.d;
                f3 = (float) this.d;
            } else {
                f3 = 0.0f;
                f2 = 0.0f;
            }
            if (z2) {
                f4 = (float) this.d;
                f = (float) this.d;
            } else {
                f4 = 0.0f;
            }
            this.l = z;
            this.m = z2;
            this.i.setRoundingStrategy(d.a(f2, f4, f, f3));
            this.j.setImageBitmap(this.p);
        }
    }

    public void a(boolean z) {
        if (this.o != z) {
            this.o = z;
            this.k.startAnimation(z ? this.a : this.b);
        }
    }

    public void setVideoFile(VideoFile videoFile) {
        if (videoFile == null) {
            this.n = null;
            this.i.a(null);
        } else if (this.n != videoFile) {
            this.k.setDuration(videoFile.g);
            this.n = videoFile;
            this.i.a(a.a(videoFile).a(ScaleType.FILL_CROP));
        }
    }

    public boolean a() {
        return this.s == 2 || this.s == 1;
    }

    public BitmapDrawable getFloatingShadow() {
        Bitmap createBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Config.ARGB_8888);
        this.j.draw(new Canvas(createBitmap));
        return new BitmapDrawable(getResources(), createBitmap);
    }

    public void setThumbnailSize(int i) {
        int i2 = getResources().getConfiguration().orientation;
        if (this.q != i || this.r != i2) {
            this.q = i;
            this.r = i2;
            this.e.a(i);
            forceLayout();
        }
    }
}
