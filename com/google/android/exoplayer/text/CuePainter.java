package com.google.android.exoplayer.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.util.Util;

/* compiled from: Twttr */
final class CuePainter {
    private static final float INNER_PADDING_RATIO = 0.125f;
    private static final String TAG = "CuePainter";
    private boolean applyEmbeddedStyles;
    private int backgroundColor;
    private float bottomPaddingFraction;
    private final float cornerRadius;
    private float cueLine;
    private int cueLineAnchor;
    private int cueLineType;
    private float cuePosition;
    private int cuePositionAnchor;
    private float cueSize;
    private CharSequence cueText;
    private Alignment cueTextAlignment;
    private int edgeColor;
    private int edgeType;
    private int foregroundColor;
    private final RectF lineBounds;
    private final float outlineWidth;
    private final Paint paint;
    private int parentBottom;
    private int parentLeft;
    private int parentRight;
    private int parentTop;
    private final float shadowOffset;
    private final float shadowRadius;
    private final float spacingAdd;
    private final float spacingMult;
    private StaticLayout textLayout;
    private int textLeft;
    private int textPaddingX;
    private final TextPaint textPaint;
    private float textSizePx;
    private int textTop;
    private int windowColor;

    public CuePainter(Context context) {
        this.lineBounds = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.spacingAdd = (float) obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.spacingMult = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        int round = Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) * 2.0f) / 160.0f);
        this.cornerRadius = (float) round;
        this.outlineWidth = (float) round;
        this.shadowRadius = (float) round;
        this.shadowOffset = (float) round;
        this.textPaint = new TextPaint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setSubpixelText(true);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Style.FILL);
    }

    public void draw(Cue cue, boolean z, CaptionStyleCompat captionStyleCompat, float f, float f2, Canvas canvas, int i, int i2, int i3, int i4) {
        CharSequence charSequence = cue.text;
        if (!TextUtils.isEmpty(charSequence)) {
            if (!z) {
                charSequence = charSequence.toString();
            }
            if (areCharSequencesEqual(this.cueText, charSequence) && Util.areEqual(this.cueTextAlignment, cue.textAlignment) && this.cueLine == cue.line && this.cueLineType == cue.lineType && Util.areEqual(Integer.valueOf(this.cueLineAnchor), Integer.valueOf(cue.lineAnchor)) && this.cuePosition == cue.position && Util.areEqual(Integer.valueOf(this.cuePositionAnchor), Integer.valueOf(cue.positionAnchor)) && this.cueSize == cue.size && this.applyEmbeddedStyles == z && this.foregroundColor == captionStyleCompat.foregroundColor && this.backgroundColor == captionStyleCompat.backgroundColor && this.windowColor == captionStyleCompat.windowColor && this.edgeType == captionStyleCompat.edgeType && this.edgeColor == captionStyleCompat.edgeColor && Util.areEqual(this.textPaint.getTypeface(), captionStyleCompat.typeface) && this.textSizePx == f && this.bottomPaddingFraction == f2 && this.parentLeft == i && this.parentTop == i2 && this.parentRight == i3 && this.parentBottom == i4) {
                drawLayout(canvas);
                return;
            }
            this.cueText = charSequence;
            this.cueTextAlignment = cue.textAlignment;
            this.cueLine = cue.line;
            this.cueLineType = cue.lineType;
            this.cueLineAnchor = cue.lineAnchor;
            this.cuePosition = cue.position;
            this.cuePositionAnchor = cue.positionAnchor;
            this.cueSize = cue.size;
            this.applyEmbeddedStyles = z;
            this.foregroundColor = captionStyleCompat.foregroundColor;
            this.backgroundColor = captionStyleCompat.backgroundColor;
            this.windowColor = captionStyleCompat.windowColor;
            this.edgeType = captionStyleCompat.edgeType;
            this.edgeColor = captionStyleCompat.edgeColor;
            this.textPaint.setTypeface(captionStyleCompat.typeface);
            this.textSizePx = f;
            this.bottomPaddingFraction = f2;
            this.parentLeft = i;
            this.parentTop = i2;
            this.parentRight = i3;
            this.parentBottom = i4;
            int i5 = this.parentRight - this.parentLeft;
            int i6 = this.parentBottom - this.parentTop;
            this.textPaint.setTextSize(f);
            int i7 = (int) ((INNER_PADDING_RATIO * f) + 0.5f);
            int i8 = i5 - (i7 * 2);
            if (this.cueSize != Cue.DIMEN_UNSET) {
                i8 = (int) (((float) i8) * this.cueSize);
            }
            if (i8 <= 0) {
                Log.w(TAG, "Skipped drawing subtitle cue (insufficient space)");
                return;
            }
            int i9;
            Alignment alignment = this.cueTextAlignment == null ? Alignment.ALIGN_CENTER : this.cueTextAlignment;
            this.textLayout = new StaticLayout(charSequence, this.textPaint, i8, alignment, this.spacingMult, this.spacingAdd, true);
            i8 = this.textLayout.getHeight();
            int i10 = 0;
            int lineCount = this.textLayout.getLineCount();
            for (i9 = 0; i9 < lineCount; i9++) {
                i10 = Math.max((int) Math.ceil((double) this.textLayout.getLineWidth(i9)), i10);
            }
            lineCount = i10 + (i7 * 2);
            if (this.cuePosition != Cue.DIMEN_UNSET) {
                i9 = Math.round(((float) i5) * this.cuePosition) + this.parentLeft;
                if (this.cuePositionAnchor == 2) {
                    i9 -= lineCount;
                } else if (this.cuePositionAnchor == 1) {
                    i9 = ((i9 * 2) - lineCount) / 2;
                }
                i10 = Math.max(i9, this.parentLeft);
                i9 = Math.min(i10 + lineCount, this.parentRight);
                i5 = i10;
            } else {
                i10 = (i5 - lineCount) / 2;
                i9 = i10 + lineCount;
                i5 = i10;
            }
            if (this.cueLine != Cue.DIMEN_UNSET) {
                if (this.cueLineType == 0) {
                    i10 = Math.round(((float) i6) * this.cueLine) + this.parentTop;
                } else {
                    i10 = this.textLayout.getLineBottom(0) - this.textLayout.getLineTop(0);
                    if (this.cueLine >= 0.0f) {
                        i10 = Math.round(((float) i10) * this.cueLine) + this.parentTop;
                    } else {
                        i10 = Math.round(((float) i10) * this.cueLine) + this.parentBottom;
                    }
                }
                if (this.cueLineAnchor == 2) {
                    i10 -= i8;
                } else if (this.cueLineAnchor == 1) {
                    i10 = ((i10 * 2) - i8) / 2;
                }
                if (i10 + i8 > this.parentBottom) {
                    i10 = this.parentBottom - i8;
                    i8 = this.parentBottom;
                } else if (i10 < this.parentTop) {
                    i10 = this.parentTop;
                    i8 += this.parentTop;
                }
                i6 = i10;
            } else {
                i10 = (this.parentBottom - i8) - ((int) (((float) i6) * f2));
                i8 += i10;
                i6 = i10;
            }
            this.textLayout = new StaticLayout(charSequence, this.textPaint, i9 - i5, alignment, this.spacingMult, this.spacingAdd, true);
            this.textLeft = i5;
            this.textTop = i6;
            this.textPaddingX = i7;
            drawLayout(canvas);
        }
    }

    private void drawLayout(Canvas canvas) {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            int lineCount;
            int i;
            int save = canvas.save();
            canvas.translate((float) this.textLeft, (float) this.textTop);
            if (Color.alpha(this.windowColor) > 0) {
                this.paint.setColor(this.windowColor);
                canvas.drawRect((float) (-this.textPaddingX), 0.0f, (float) (staticLayout.getWidth() + this.textPaddingX), (float) staticLayout.getHeight(), this.paint);
            }
            if (Color.alpha(this.backgroundColor) > 0) {
                this.paint.setColor(this.backgroundColor);
                float lineTop = (float) staticLayout.getLineTop(0);
                lineCount = staticLayout.getLineCount();
                float f = lineTop;
                for (i = 0; i < lineCount; i++) {
                    this.lineBounds.left = staticLayout.getLineLeft(i) - ((float) this.textPaddingX);
                    this.lineBounds.right = staticLayout.getLineRight(i) + ((float) this.textPaddingX);
                    this.lineBounds.top = f;
                    this.lineBounds.bottom = (float) staticLayout.getLineBottom(i);
                    f = this.lineBounds.bottom;
                    canvas.drawRoundRect(this.lineBounds, this.cornerRadius, this.cornerRadius, this.paint);
                }
            }
            if (this.edgeType == 1) {
                this.textPaint.setStrokeJoin(Join.ROUND);
                this.textPaint.setStrokeWidth(this.outlineWidth);
                this.textPaint.setColor(this.edgeColor);
                this.textPaint.setStyle(Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (this.edgeType == 2) {
                this.textPaint.setShadowLayer(this.shadowRadius, this.shadowOffset, this.shadowOffset, this.edgeColor);
            } else if (this.edgeType == 3 || this.edgeType == 4) {
                lineCount = this.edgeType == 3 ? 1 : 0;
                int i2 = lineCount != 0 ? -1 : this.edgeColor;
                if (lineCount != 0) {
                    i = this.edgeColor;
                } else {
                    i = -1;
                }
                float f2 = this.shadowRadius / 2.0f;
                this.textPaint.setColor(this.foregroundColor);
                this.textPaint.setStyle(Style.FILL);
                this.textPaint.setShadowLayer(this.shadowRadius, -f2, -f2, i2);
                staticLayout.draw(canvas);
                this.textPaint.setShadowLayer(this.shadowRadius, f2, f2, i);
            }
            this.textPaint.setColor(this.foregroundColor);
            this.textPaint.setStyle(Style.FILL);
            staticLayout.draw(canvas);
            this.textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }

    private static boolean areCharSequencesEqual(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }
}
