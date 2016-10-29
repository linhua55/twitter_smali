package com.google.android.exoplayer.text;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class SubtitleLayout extends View {
    private static final int ABSOLUTE = 2;
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    private static final int FRACTIONAL = 0;
    private static final int FRACTIONAL_IGNORE_PADDING = 1;
    private boolean applyEmbeddedStyles;
    private float bottomPaddingFraction;
    private List<Cue> cues;
    private final List<CuePainter> painters;
    private CaptionStyleCompat style;
    private float textSize;
    private int textSizeType;

    public SubtitleLayout(Context context) {
        this(context, null);
    }

    public SubtitleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.painters = new ArrayList();
        this.textSizeType = FRACTIONAL;
        this.textSize = DEFAULT_TEXT_SIZE_FRACTION;
        this.applyEmbeddedStyles = true;
        this.style = CaptionStyleCompat.DEFAULT;
        this.bottomPaddingFraction = DEFAULT_BOTTOM_PADDING_FRACTION;
    }

    public void setCues(List<Cue> list) {
        if (this.cues != list) {
            this.cues = list;
            int size = list == null ? FRACTIONAL : list.size();
            while (this.painters.size() < size) {
                this.painters.add(new CuePainter(getContext()));
            }
            invalidate();
        }
    }

    public void setFixedTextSize(int i, float f) {
        Resources system;
        Context context = getContext();
        if (context == null) {
            system = Resources.getSystem();
        } else {
            system = context.getResources();
        }
        setTextSize(ABSOLUTE, TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public void setFractionalTextSize(float f, boolean z) {
        setTextSize(z ? FRACTIONAL_IGNORE_PADDING : FRACTIONAL, f);
    }

    private void setTextSize(int i, float f) {
        if (this.textSizeType != i || this.textSize != f) {
            this.textSizeType = i;
            this.textSize = f;
            invalidate();
        }
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.applyEmbeddedStyles != z) {
            this.applyEmbeddedStyles = z;
            invalidate();
        }
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        if (this.style != captionStyleCompat) {
            this.style = captionStyleCompat;
            invalidate();
        }
    }

    public void setBottomPaddingFraction(float f) {
        if (this.bottomPaddingFraction != f) {
            this.bottomPaddingFraction = f;
            invalidate();
        }
    }

    public void dispatchDraw(Canvas canvas) {
        int i;
        if (this.cues == null) {
            i = FRACTIONAL;
        } else {
            i = this.cues.size();
        }
        int top = getTop();
        int bottom = getBottom();
        int left = getLeft() + getPaddingLeft();
        int paddingTop = top + getPaddingTop();
        int right = getRight() + getPaddingRight();
        int paddingBottom = bottom - getPaddingBottom();
        if (paddingBottom > paddingTop && right > left) {
            float f;
            if (this.textSizeType == ABSOLUTE) {
                f = this.textSize;
            } else {
                f = this.textSize * ((float) (this.textSizeType == 0 ? paddingBottom - paddingTop : bottom - top));
            }
            if (f > 0.0f) {
                for (int i2 = FRACTIONAL; i2 < i; i2 += FRACTIONAL_IGNORE_PADDING) {
                    ((CuePainter) this.painters.get(i2)).draw((Cue) this.cues.get(i2), this.applyEmbeddedStyles, this.style, f, this.bottomPaddingFraction, canvas, left, paddingTop, right, paddingBottom);
                }
            }
        }
    }
}
