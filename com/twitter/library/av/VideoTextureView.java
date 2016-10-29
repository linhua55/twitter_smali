package com.twitter.library.av;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.support.annotation.VisibleForTesting;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import bbn;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.math.Size;
import java.lang.reflect.Field;

/* compiled from: Twttr */
public abstract class VideoTextureView extends TextureView implements SurfaceTextureListener, an {
    static Field b;
    private final at a;
    protected final am c;
    protected int d;
    protected int e;
    @VisibleForTesting
    float f;
    final AVPlayerAttachment g;
    final v h;
    y i;

    static {
        try {
            b = TextureView.class.getDeclaredField("mLayer");
            b.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
    }

    VideoTextureView(Context context, AVPlayerAttachment aVPlayerAttachment, am amVar) {
        this(context, aVPlayerAttachment, amVar, new at());
    }

    VideoTextureView(Context context, AVPlayerAttachment aVPlayerAttachment, am amVar, at atVar) {
        super(context);
        this.f = 0.0f;
        this.g = aVPlayerAttachment;
        this.h = aVPlayerAttachment.a().F();
        this.c = amVar;
        this.a = atVar;
        d();
        if (b == null) {
            bbn.a(new NoSuchFieldException("Could not find TextureView.mLayer"));
        }
    }

    @VisibleForTesting
    AVPlayer getAVPlayer() {
        return this.g.a();
    }

    protected void a() {
        this.a.a(this);
    }

    public void a(double d) {
        if (this.e != 0 && this.d != 0) {
            this.f = ((float) (((int) (45.0d + d)) / 90)) * 90.0f;
            a();
        }
    }

    public void a(int i, int i2) {
        this.d = i;
        this.e = i2;
        if (!(this.d == 0 || this.e == 0)) {
            requestLayout();
        }
        a();
    }

    private void d() {
        Size defaultVideoSize = getDefaultVideoSize();
        this.d = defaultVideoSize.a();
        this.e = defaultVideoSize.b();
        setSurfaceTextureListener(this);
    }

    private Size getDefaultVideoSize() {
        ImageSpec l = this.g.h().c().l();
        if (l == null || l.d == null) {
            return Size.b;
        }
        return Size.a(l.d.x, l.d.y);
    }

    public void b() {
        if (this.i != null) {
            this.g.a().a(this.i.b);
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(VideoTextureView.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(VideoTextureView.class.getName());
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        a();
    }

    public int getVideoWidth() {
        return this.d;
    }

    public int getVideoHeight() {
        return this.e;
    }

    public Object getHardwareLayer() {
        Object obj = null;
        try {
            if (b != null) {
                obj = b.get(this);
            }
        } catch (IllegalAccessException e) {
        }
        return obj;
    }

    public boolean c() {
        return (getHardwareLayer() == null || getSurfaceTexture() == null) ? false : true;
    }
}
