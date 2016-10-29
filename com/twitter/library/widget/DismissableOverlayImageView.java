package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.media.ui.image.RichImageView;
import defpackage.bdd;

/* compiled from: Twttr */
public class DismissableOverlayImageView extends RichImageView {
    private Drawable a;
    private boolean b;
    private f c;
    private boolean d;

    public DismissableOverlayImageView(Context context) {
        super(context);
        a(context, null);
    }

    public DismissableOverlayImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public DismissableOverlayImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public void setOnDismissListener(f fVar) {
        this.c = fVar;
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            setIsFixedSize(false);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.DismissableOverlayImageView);
            Drawable drawable = obtainStyledAttributes.getDrawable(bdd.DismissableOverlayImageView_dismissOverlayDrawable);
            if (drawable != null) {
                setDismissOverlayDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setDismissOverlayDrawable(Drawable drawable) {
        Drawable drawable2 = this.a;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                unscheduleDrawable(drawable2);
            }
            this.a = drawable;
            requestLayout();
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.a) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setDismissDrawableBounds(this.a);
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        this.d = true;
        setDismissDrawableBounds(this.a);
        return frame;
    }

    private void setDismissDrawableBounds(Drawable drawable) {
        if (this.d && drawable != null) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            drawable.setBounds(Math.max(0, measuredWidth - drawable.getIntrinsicWidth()), 0, measuredWidth, Math.min(drawable.getIntrinsicHeight(), measuredHeight));
            invalidate();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int y = (int) motionEvent.getY();
        int x = (int) motionEvent.getX();
        Rect bounds = this.a.getBounds();
        boolean contains = new Rect(bounds.left - 50, bounds.top - 50, bounds.right + 50, bounds.bottom + 50).contains(x, y);
        switch (action) {
            case Util.TYPE_DASH /*0*/:
                if (contains) {
                    this.a.setState(new int[]{16842919});
                    this.b = true;
                    break;
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (contains && this.b && this.c != null) {
                    this.c.a();
                }
                this.b = false;
                this.a.setState(new int[0]);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (!contains) {
                    this.a.setState(new int[0]);
                    break;
                }
                this.a.setState(new int[]{16842919});
                this.b = true;
                break;
            case Util.TYPE_OTHER /*3*/:
                this.b = false;
                this.a.setState(new int[0]);
                break;
        }
        return super.onTouchEvent(motionEvent);
    }
}
