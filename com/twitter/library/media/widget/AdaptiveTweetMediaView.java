package com.twitter.library.media.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import cgl;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.media.EditableImage;
import com.twitter.util.ak;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import defpackage.bct;
import defpackage.bcv;

/* compiled from: Twttr */
public class AdaptiveTweetMediaView extends TweetMediaView {
    protected a a;
    protected boolean b;
    private int f;
    private float g;
    private boolean h;

    public AdaptiveTweetMediaView(Context context) {
        this(context, false, false);
    }

    public AdaptiveTweetMediaView(Context context, boolean z) {
        this(context, null, z, false);
    }

    public AdaptiveTweetMediaView(Context context, boolean z, boolean z2) {
        this(context, null, z, z2);
    }

    public AdaptiveTweetMediaView(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        this(context, attributeSet, bct.tweetMediaViewStyle, z, z2);
    }

    public AdaptiveTweetMediaView(Context context, AttributeSet attributeSet, int i, boolean z, boolean z2) {
        super(context, attributeSet, i, z, z2);
        this.f = 0;
        this.g = 1.0f;
        this.a = new a(this, context.getResources().getDimensionPixelSize(bcv.adaptiveTweetMediaViewDivider));
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public void setCard(cgl cgl) {
        super.setCard(cgl);
        if (cgl != null && this.b) {
            if (cgl.z()) {
                this.f = 3;
            } else if (cgl.v() || cgl.u() || cgl.w()) {
                this.f = 1;
            } else {
                this.f = 0;
            }
        }
    }

    public void setSingleImageMinAspectRatio(float f) {
        this.g = f;
    }

    protected Size a(int i, int i2) {
        if (!this.b) {
            return super.a(i, i2);
        }
        int size = MeasureSpec.getSize(i);
        Size a;
        switch (getImageCount()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                ab abVar = (ab) this.c.get(0);
                Size size2 = abVar.b;
                Size a2 = a(size);
                if (!this.h || size2.b(a2)) {
                    this.a.a(1, 1, size, a(abVar));
                } else {
                    a = size2.a(a2, false);
                    this.a.a(1, 1, ak.a((float) a.a()), a.e());
                }
                this.a.a(0, 0, 0, 1, 1);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.a.a(2, 1, size, 2.0f);
                this.a.a(0, 0, 0, 1, 1);
                this.a.a(1, 1, 0, 1, 1);
                break;
            case Util.TYPE_OTHER /*3*/:
                this.a.a(3, 2, size, 1.5f);
                this.a.a(0, 0, 0, 2, 2);
                this.a.a(1, 2, 0, 1, 1);
                this.a.a(2, 2, 1, 1, 1);
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a = ((ab) this.c.get(0)).b;
                if (!a.d()) {
                    this.a.a(3, 3, size, 1.0f);
                    this.a.a(0, 0, 0, 2, 3);
                    this.a.a(1, 2, 0, 1, 1);
                    this.a.a(2, 2, 1, 1, 1);
                    this.a.a(3, 2, 2, 1, 1);
                    break;
                }
                int i3 = a.e() >= 2.0f ? 1 : 2;
                int i4 = i3 + 1;
                this.a.a(3, i4, size, 3.0f / ((float) i4));
                this.a.a(0, 0, 0, 3, i3);
                this.a.a(1, 0, i3, 1, 1);
                this.a.a(2, 1, i3, 1, 1);
                this.a.a(3, 2, i3, 1, 1);
                break;
        }
        return Size.a(this.a.a(), this.a.b());
    }

    protected void a() {
        if (this.b) {
            switch (getImageCount()) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.a.a(this.d[0], 0, 0, 0);
                    return;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.a.a(this.d[0], 0, 0, 0);
                    this.a.a(this.d[1], 1, 1, 0);
                    return;
                case Util.TYPE_OTHER /*3*/:
                    this.a.a(this.d[0], 0, 0, 0);
                    this.a.a(this.d[1], 1, 2, 0);
                    this.a.a(this.d[2], 2, 2, 1);
                    return;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    Size size = ((ab) this.c.get(0)).b;
                    if (size.d()) {
                        int i;
                        if (size.e() >= 2.0f) {
                            i = 1;
                        } else {
                            i = 2;
                        }
                        this.a.a(this.d[0], 0, 0, 0);
                        this.a.a(this.d[1], 1, 0, i);
                        this.a.a(this.d[2], 2, 1, i);
                        this.a.a(this.d[3], 3, 2, i);
                        return;
                    }
                    this.a.a(this.d[0], 0, 0, 0);
                    this.a.a(this.d[1], 1, 2, 0);
                    this.a.a(this.d[2], 2, 2, 1);
                    this.a.a(this.d[3], 3, 2, 2);
                    return;
                default:
                    return;
            }
        }
        super.a();
    }

    protected float a(ab abVar) {
        float f = 1.0f;
        float e = abVar.b.e();
        if (abVar.a instanceof cgl) {
            switch (this.f) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    return b.a(e, 1.0f, 3.0f);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    return b.a(e, this.g, 3.0f);
                case Util.TYPE_OTHER /*3*/:
                    return e;
                default:
                    return 1.7777778f;
            }
        } else if (abVar.a instanceof EditableImage) {
            return ((EditableImage) abVar.a).bm_();
        } else {
            if (!abVar.a()) {
                f = this.g;
            }
            return b.a(e, f, 3.0f);
        }
    }

    protected Size a(int i) {
        float b = ((float) i) / ak.b();
        return Size.a(b, b / 1.7777778f);
    }
}
