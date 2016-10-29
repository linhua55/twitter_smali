package com.twitter.android.widget;

import abw;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.media.manager.h;
import com.twitter.library.media.widget.VideoDurationView;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.VideoFile;
import com.twitter.media.model.l;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableVideo;
import com.twitter.model.media.MediaSource;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class MediaStoreItemView extends BaseMediaImageView<MediaStoreItemView> {
    private final int a;
    private ImageView h;
    private ImageView i;
    private View j;
    private View k;
    private ImageView l;
    private VideoDurationView m;
    private View n;
    private View o;
    private l p;
    private EditableMedia q;
    private boolean r;
    private MediaSource s;
    private View t;
    private boolean u;
    private cn v;

    public MediaStoreItemView(Context context) {
        this(context, null, 0);
    }

    public MediaStoreItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaStoreItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context.getResources().getDimensionPixelSize(2131689819);
        setErrorDrawableId(2130839982);
    }

    public void setSource(MediaSource mediaSource) {
        this.s = mediaSource;
    }

    public Size getImageSize() {
        return Size.a(this);
    }

    protected void a(Drawable drawable) {
        this.h.setImageDrawable(drawable);
    }

    protected void a(@DrawableRes int i) {
        super.a(i);
        this.l.setVisibility(4);
    }

    public ViewPropertyAnimator getImageViewAnimator() {
        return this.h.animate();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.h = (ImageView) findViewById(2131952311);
        this.i = (ImageView) findViewById(2131952312);
        this.j = findViewById(2131952506);
        this.k = findViewById(2131952508);
        this.l = (ImageView) findViewById(2131952504);
        this.m = (VideoDurationView) findViewById(2131951740);
        this.n = findViewById(2131952507);
        this.o = findViewById(2131952505);
        this.t = findViewById(2131952503);
        this.n.setOnClickListener(new cj(this));
    }

    public void setCallback(cn cnVar) {
        this.v = cnVar;
    }

    public void setMediaStoreItem(l lVar) {
        this.p = lVar;
        this.h.setImageDrawable(null);
        this.l.setVisibility(4);
        this.n.setVisibility(4);
        this.t.setVisibility(4);
        this.u = false;
        if (lVar == null) {
            setEditableMedia(null);
            a(null);
            return;
        }
        a(h.a(lVar).a(Config.RGB_565));
    }

    public l getMediaStoreItem() {
        return this.p;
    }

    public MediaType getMediaType() {
        return this.p != null ? this.p.d : MediaType.a;
    }

    public void a(ImageResponse imageResponse, Drawable drawable) {
        super.a(imageResponse, drawable);
        MediaFile a = imageResponse.a();
        if (a != null) {
            setEditableMedia(EditableMedia.a(a, this.s));
            if (a instanceof AnimatedGifFile) {
                this.u = ((int) a.d.length()) > abw.a();
                if (this.u) {
                    this.k.setVisibility(0);
                }
            }
        }
    }

    public EditableMedia getEditableMedia() {
        return this.q;
    }

    private void setEditableMedia(EditableMedia editableMedia) {
        int i;
        int i2 = 0;
        this.q = editableMedia;
        MediaType mediaType;
        if (editableMedia != null) {
            MediaType g = editableMedia.g();
            switch (cm.a[g.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.t.setVisibility(0);
                    this.l.setVisibility(4);
                    this.m.setVisibility(4);
                    mediaType = g;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.l.setVisibility(0);
                    this.m.setVisibility(4);
                    mediaType = g;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    this.t.setVisibility(0);
                    this.l.setVisibility(4);
                    this.m.setDuration(((VideoFile) ((EditableVideo) editableMedia).k).g);
                    this.m.setVisibility(0);
                    mediaType = g;
                    break;
                default:
                    mediaType = g;
                    break;
            }
        }
        mediaType = MediaType.a;
        this.l.setVisibility(4);
        this.m.setVisibility(4);
        if (!this.r || r0 == MediaType.a || r0 == MediaType.c) {
            i = 0;
        } else {
            i = 1;
        }
        View view = this.n;
        if (i == 0) {
            i2 = 4;
        }
        view.setVisibility(i2);
        view = (View) this.n.getParent();
        if (i != 0) {
            view.post(new ck(this, view));
        } else {
            view.setTouchDelegate(null);
        }
    }

    private Rect a(View view) {
        Rect rect = new Rect();
        int width = view.getWidth();
        int i = width - this.a;
        int height = view.getHeight();
        rect.set(i, height - this.a, width, height);
        return rect;
    }

    public boolean isSelected() {
        return this.i.getVisibility() == 0;
    }

    public boolean isEnabled() {
        return (!super.isEnabled() || this.q == null || this.q.g() == MediaType.a) ? false : true;
    }

    public void a(boolean z) {
        int visibility = this.i.getVisibility();
        this.i.setVisibility(z ? 0 : 4);
        if (visibility != this.i.getVisibility()) {
            d(z);
        }
    }

    public void b(boolean z) {
        this.j.setVisibility(z ? 0 : 4);
    }

    public void c(boolean z) {
        View view = this.k;
        int i = (z || this.u) ? 0 : 4;
        view.setVisibility(i);
    }

    public void setShowExpand(boolean z) {
        int i = 0;
        if (this.r != z) {
            View view = (View) this.n.getParent();
            this.r = z;
            if (!z || this.q == null) {
                view.setTouchDelegate(null);
                this.n.setVisibility(4);
                return;
            }
            MediaType g = this.q.g();
            int i2 = (g == MediaType.a || g == MediaType.c) ? 0 : 1;
            View view2 = this.n;
            if (i2 == 0) {
                i = 4;
            }
            view2.setVisibility(i);
            if (i2 != 0 && view.getTouchDelegate() == null) {
                view.setTouchDelegate(new TouchDelegate(a(view), this.n));
            }
        }
    }

    private void d(boolean z) {
        ObjectAnimator ofFloat;
        if (z) {
            this.o.setVisibility(0);
            this.o.setAlpha(0.0f);
            ofFloat = ObjectAnimator.ofFloat(this.o, View.ALPHA, new float[]{0.0f, 1.0f});
        } else {
            ofFloat = ObjectAnimator.ofFloat(this.o, View.ALPHA, new float[]{1.0f, 0.0f});
            ofFloat.addListener(new cl(this));
        }
        ofFloat.setDuration(100);
        ofFloat.start();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.v.b(this);
    }
}
