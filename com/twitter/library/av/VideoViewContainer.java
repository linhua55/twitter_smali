package com.twitter.library.av;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public abstract class VideoViewContainer extends ViewGroup implements z {
    private final bc a;
    protected View b;
    protected ba c;
    protected final bb d;
    protected final AVPlayerAttachment e;
    Drawable f;
    private final Point g;
    private boolean h;

    protected abstract void a(SurfaceTexture surfaceTexture);

    public abstract void c();

    protected abstract boolean d();

    VideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar) {
        this(context, aVPlayerAttachment, bbVar, new bc());
    }

    VideoViewContainer(Context context, AVPlayerAttachment aVPlayerAttachment, bb bbVar, bc bcVar) {
        super(context);
        this.g = new Point();
        this.e = aVPlayerAttachment;
        this.d = bbVar;
        this.a = bcVar;
        setWillNotDraw(false);
    }

    public Rect a(int i, int i2, int i3, int i4) {
        if (this.c != null) {
            return this.c.a(i, i2, i3, i4);
        }
        return new Rect(i, i2, i3, i4);
    }

    public void a(int i, int i2) {
        this.g.set(i, i2);
        if (this.c != null) {
            this.c.a(i, i2);
        }
    }

    public void setKeepScreenOn(boolean z) {
        this.h = z;
        if (this.c != null) {
            this.c.a(z);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.b != null) {
            this.b.layout(0, 0, i, i2);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.b != null) {
            this.b.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    public boolean e() {
        return (this.b == null || this.b.getParent() == null) ? false : true;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f != null) {
            this.f.draw(canvas);
        }
    }

    void f() {
        this.f = null;
    }

    void g() {
        a(VERSION.SDK_INT);
    }

    void a(int i) {
        int i2 = 1;
        int i3 = i >= 19 ? 1 : 0;
        boolean z = this.b instanceof VideoTextureView;
        int i4;
        if (this.b == null || this.b.getWidth() <= 0 || this.b.getHeight() <= 0) {
            i4 = 0;
        } else {
            i4 = 1;
        }
        int i5;
        if (this.a.a(this) > 0.1f) {
            i5 = 1;
        } else {
            i5 = 0;
        }
        if (!(i3 == 0 || !z || r3 == 0 || r4 == 0)) {
            VideoTextureView videoTextureView = (VideoTextureView) this.b;
            AVPlayer a = this.e.a();
            if (!(a.u() || a.y() || a.x())) {
                i2 = 0;
            }
            if (i2 != 0) {
                try {
                    Drawable bitmapDrawable = new BitmapDrawable(getResources(), Bitmap.createBitmap(this.b.getWidth() / 2, this.b.getHeight() / 2, Config.RGB_565));
                    if (videoTextureView.c()) {
                        videoTextureView.getBitmap(bitmapDrawable.getBitmap());
                        this.f = bitmapDrawable;
                        this.f.setBounds(a(videoTextureView));
                    }
                } catch (OutOfMemoryError e) {
                }
            }
        }
        if (this.f == null) {
            this.f = new ColorDrawable(-16777216);
            this.f.setBounds(0, 0, getWidth(), getHeight());
        }
        invalidate();
    }

    Rect a(VideoTextureView videoTextureView) {
        float[] fArr = new float[9];
        videoTextureView.getTransform(new Matrix()).getValues(fArr);
        return new Rect((int) fArr[2], (int) fArr[5], (int) (fArr[2] + (((float) getWidth()) * fArr[0])), (int) ((fArr[4] * ((float) getHeight())) + fArr[5]));
    }

    protected void b() {
        if (this.c == null) {
            this.c = this.d.a(getContext(), this.e, this);
            this.c.a(this.g.x, this.g.y);
            this.c.a(this.h);
        }
        if (this.b == null) {
            this.b = this.c.a();
        }
        if (d() && (this.b instanceof VideoTextureView)) {
            VideoTextureView videoTextureView = (VideoTextureView) this.b;
            SurfaceTexture surfaceTexture = getSurfaceTexture();
            if (!(surfaceTexture == null || surfaceTexture == videoTextureView.getSurfaceTexture())) {
                a(surfaceTexture);
                videoTextureView.setSurfaceTexture(surfaceTexture);
            }
        }
        if (!e()) {
            addView(this.b);
        }
    }

    public void a(aa aaVar) {
        if (this.b instanceof TextureView) {
            aaVar.a((TextureView) this.b, this.g);
        }
    }

    public void a(double d) {
        if (this.b instanceof VideoTextureView) {
            ((VideoTextureView) this.b).a(d);
        }
    }

    protected SurfaceTexture getSurfaceTexture() {
        return this.e.a().F().a(this);
    }
}
