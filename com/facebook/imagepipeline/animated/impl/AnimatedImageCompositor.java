package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import com.facebook.common.references.a;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo.DisposalMethod;
import com.facebook.imagepipeline.animated.base.g;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class AnimatedImageCompositor {
    private final g a;
    private final l b;
    private final Paint c;

    /* compiled from: Twttr */
    enum FrameNeededResult {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    public AnimatedImageCompositor(g gVar, l lVar) {
        this.a = gVar;
        this.b = lVar;
        this.c = new Paint();
        this.c.setColor(0);
        this.c.setStyle(Style.FILL);
        this.c.setXfermode(new PorterDuffXfermode(Mode.SRC));
    }

    public void a(int i, Bitmap bitmap) {
        int i2;
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, Mode.SRC);
        if (!this.a.a(i).f || i <= 0) {
            i2 = i;
        } else {
            i2 = a(i - 1, canvas);
        }
        while (i2 < i) {
            AnimatedDrawableFrameInfo a = this.a.a(i2);
            DisposalMethod disposalMethod = a.g;
            if (disposalMethod != DisposalMethod.DISPOSE_TO_PREVIOUS) {
                this.a.a(i2, canvas);
                this.b.a(i2, bitmap);
                if (disposalMethod == DisposalMethod.DISPOSE_TO_BACKGROUND) {
                    a(canvas, a);
                }
            }
            i2++;
        }
        this.a.a(i, canvas);
    }

    private int a(int i, Canvas canvas) {
        for (int i2 = i; i2 >= 0; i2--) {
            switch (k.a[a(i2).ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    AnimatedDrawableFrameInfo a = this.a.a(i2);
                    a a2 = this.b.a(i2);
                    if (a2 == null) {
                        if (a.f) {
                            break;
                        }
                        return i2;
                    }
                    try {
                        canvas.drawBitmap((Bitmap) a2.a(), 0.0f, 0.0f, null);
                        if (a.g == DisposalMethod.DISPOSE_TO_BACKGROUND) {
                            a(canvas, a);
                        }
                        int i3 = i2 + 1;
                        a2.close();
                        return i3;
                    } catch (Throwable th) {
                        a2.close();
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    return i2 + 1;
                case Util.TYPE_OTHER /*3*/:
                    return i2;
                default:
                    break;
            }
        }
        return 0;
    }

    private void a(Canvas canvas, AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        canvas.drawRect((float) animatedDrawableFrameInfo.b, (float) animatedDrawableFrameInfo.c, (float) (animatedDrawableFrameInfo.b + animatedDrawableFrameInfo.d), (float) (animatedDrawableFrameInfo.c + animatedDrawableFrameInfo.e), this.c);
    }

    private FrameNeededResult a(int i) {
        AnimatedDrawableFrameInfo a = this.a.a(i);
        DisposalMethod disposalMethod = a.g;
        if (disposalMethod == DisposalMethod.DISPOSE_DO_NOT) {
            return FrameNeededResult.REQUIRED;
        }
        if (disposalMethod == DisposalMethod.DISPOSE_TO_BACKGROUND) {
            if (a.b == 0 && a.c == 0 && a.d == this.a.f() && a.e == this.a.g()) {
                return FrameNeededResult.NOT_REQUIRED;
            }
            return FrameNeededResult.REQUIRED;
        } else if (disposalMethod == DisposalMethod.DISPOSE_TO_PREVIOUS) {
            return FrameNeededResult.SKIP;
        } else {
            return FrameNeededResult.ABORT;
        }
    }
}
