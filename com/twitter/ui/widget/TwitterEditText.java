package com.twitter.ui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.widget.EditText;
import com.twitter.android.mx;
import com.twitter.util.a;
import crv;
import crx;
import csd;
import cse;
import csl;
import java.util.Arrays;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterEditText extends EditText {
    private static boolean a;
    private static final int[] b;
    private static final int[] c;
    private static final int[] d;
    private static final ColorStateList e;
    private int A;
    private String B;
    private String C;
    private int[] D;
    private Drawable E;
    private int F;
    private boolean G;
    private csl H;
    private int f;
    private int g;
    private int h;
    private ao i;
    private boolean j;
    private boolean k;
    private Layout l;
    private CharSequence m;
    private ColorStateList n;
    private final TextPaint o;
    private int p;
    private Layout q;
    private final TextPaint r;
    private ColorStateList s;
    private CharSequence t;
    private CharSequence u;
    private int v;
    private int w;
    private int x;
    private ColorStateList y;
    private boolean z;

    static {
        a = false;
        b = new int[]{crv.state_fault};
        c = new int[]{crv.state_error};
        d = new int[]{crv.state_error, crv.state_fault};
        e = ColorStateList.valueOf(0);
    }

    public TwitterEditText(Context context) {
        this(context, null);
    }

    public TwitterEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public TwitterEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = e;
        this.o = new TextPaint();
        this.r = new TextPaint();
        this.s = e;
        this.y = e;
        this.B = BuildConfig.VERSION_NAME;
        this.C = BuildConfig.VERSION_NAME;
        a(context, attributeSet, i, 0);
    }

    @TargetApi(21)
    public TwitterEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.n = e;
        this.o = new TextPaint();
        this.r = new TextPaint();
        this.s = e;
        this.y = e;
        this.B = BuildConfig.VERSION_NAME;
        this.C = BuildConfig.VERSION_NAME;
        a(context, attributeSet, i, i2);
    }

    protected void a(Context context, AttributeSet attributeSet, int i, int i2) {
        this.k = a.a(context);
        Resources resources = getResources();
        this.f = resources.getDimensionPixelOffset(crx.twitter_edit_text_divider_padding);
        this.g = resources.getDimensionPixelOffset(crx.twitter_edit_text_label_margin_bottom);
        this.h = resources.getDimensionPixelOffset(crx.twitter_edit_text_message_margin_top);
        this.B = resources.getString(csd.twitter_edit_text_counter_format_normal);
        this.C = resources.getString(csd.twitter_edit_text_counter_format_countdown);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, cse.TwitterEditText, i, i2);
        a(context, obtainStyledAttributes);
        this.m = obtainStyledAttributes.getText(cse.TwitterEditText_labelText);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(cse.TwitterEditText_labelColor);
        if (colorStateList == null) {
            colorStateList = e;
        }
        setLabelColor(colorStateList);
        this.F = obtainStyledAttributes.getInt(cse.TwitterEditText_statusIconPosition, 3);
        setStatusIcon(obtainStyledAttributes.getDrawable(cse.TwitterEditText_statusIcon));
        setUnderlineStyle(obtainStyledAttributes.getResourceId(cse.TwitterEditText_underlineStyle, 0));
        this.t = obtainStyledAttributes.getText(cse.TwitterEditText_helperMessage);
        colorStateList = obtainStyledAttributes.getColorStateList(cse.TwitterEditText_messageColor);
        if (colorStateList == null) {
            colorStateList = e;
        }
        setMessageColor(colorStateList);
        this.x = obtainStyledAttributes.getInteger(cse.TwitterEditText_maxCharacterCount, 0);
        this.w = obtainStyledAttributes.getInt(cse.TwitterEditText_characterCounterMode, 0);
        colorStateList = obtainStyledAttributes.getColorStateList(cse.TwitterEditText_characterCounterColor);
        if (colorStateList == null) {
            colorStateList = e;
        }
        setCounterColor(colorStateList);
        obtainStyledAttributes.recycle();
        b();
        this.j = true;
    }

    private void a(Context context, TypedArray typedArray) {
        ax a = ax.a(context);
        int i = typedArray.getInt(cse.TwitterEditText_labelStyle, 0);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(cse.TwitterEditText_labelSize, 0);
        this.o.setAntiAlias(true);
        this.o.setTypeface(a.b(i));
        this.o.setTextSize((float) dimensionPixelSize);
        i = typedArray.getInt(cse.TwitterEditText_messageStyle, 0);
        dimensionPixelSize = typedArray.getDimensionPixelSize(cse.TwitterEditText_messageSize, 0);
        this.r.setAntiAlias(true);
        this.r.setTypeface(a.b(i));
        this.r.setTextSize((float) dimensionPixelSize);
    }

    public int getCompoundPaddingTop() {
        int labelHeight = getLabelHeight();
        return (labelHeight == 0 ? 0 : labelHeight + this.g) + super.getCompoundPaddingTop();
    }

    private int getLabelHeight() {
        if (this.l != null) {
            return this.l.getLineTop(this.l.getLineCount());
        }
        return 0;
    }

    public int getCompoundPaddingBottom() {
        int messageHeight = getMessageHeight();
        return ((messageHeight == 0 ? 0 : messageHeight + this.h) + super.getCompoundPaddingBottom()) + getUnderLineHeight();
    }

    private int getMessageHeight() {
        if (this.q != null) {
            return this.q.getLineTop(this.q.getLineCount());
        }
        if (this.w != 0) {
            return (int) (this.r.descent() - this.r.ascent());
        }
        return 0;
    }

    private int getUnderLineHeight() {
        if (this.H != null) {
            return this.H.getBounds().height();
        }
        return 0;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (TextUtils.isEmpty(this.u)) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.a = this.u;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setError(savedState.a);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void setTypeface(Typeface typeface) {
        super.setTypeface(ax.a(getContext()).a(typeface, a));
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.H == null) {
            return;
        }
        if (i != i3 || i2 != i4) {
            this.H.setBounds(0, 0, (i - getPaddingLeft()) - getPaddingRight(), this.f);
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode == RtlSpacingHelper.UNDEFINED) {
            i = MeasureSpec.makeMeasureSpec(size, 1073741824);
        }
        a(size);
        super.onMeasure(i, i2);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate((float) getScrollX(), (float) getScrollY());
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.l != null) {
            this.o.setColor(this.p);
            canvas.save();
            canvas.translate((float) paddingLeft, (float) getPaddingTop());
            this.l.draw(canvas);
            canvas.restore();
        }
        if (this.H != null) {
            canvas.save();
            canvas.translate((float) paddingLeft, (float) (height - getCompoundPaddingBottom()));
            this.H.draw(canvas);
            canvas.restore();
        }
        float paddingBottom = (float) ((height - getPaddingBottom()) - getMessageHeight());
        if (this.q != null) {
            canvas.save();
            canvas.translate((float) paddingLeft, paddingBottom);
            this.r.setColor(this.v);
            if (this.k) {
                canvas.translate((float) (((width - paddingLeft) - paddingRight) - this.q.getWidth()), 0.0f);
            }
            this.q.draw(canvas);
            canvas.restore();
        }
        String characterCounterText = getCharacterCounterText();
        if (!TextUtils.isEmpty(characterCounterText)) {
            width -= getPaddingRight();
            this.r.setColor(this.A);
            canvas.drawText(characterCounterText, this.k ? (float) paddingLeft : ((float) width) - this.r.measureText(characterCounterText), paddingBottom - this.r.ascent(), this.r);
        }
        canvas.restore();
    }

    private void a(int i) {
        int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
        if (!TextUtils.isEmpty(this.m) && (this.l == null || this.l.getWidth() != i)) {
            this.l = new StaticLayout(this.m, this.o, paddingLeft, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        }
        CharSequence messageToDisplay = getMessageToDisplay();
        if (!TextUtils.isEmpty(messageToDisplay)) {
            int ceil;
            if (this.w != 0) {
                ceil = (int) (((double) paddingLeft) - Math.ceil((double) (this.r.measureText(Integer.toString(this.x)) * 3.0f)));
            } else {
                ceil = paddingLeft;
            }
            if (this.q == null || this.q.getWidth() != paddingLeft) {
                this.q = new StaticLayout(messageToDisplay, this.r, ceil, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable != this.H) {
            super.invalidateDrawable(drawable);
            return;
        }
        Rect bounds = drawable.getBounds();
        int scrollX = getScrollX() + getPaddingLeft();
        int scrollY = (getScrollY() + getHeight()) - getCompoundPaddingBottom();
        invalidate(bounds.left + scrollX, bounds.top + scrollY, scrollX + bounds.right, bounds.bottom + scrollY);
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.H || super.verifyDrawable(drawable);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean a;
        switch (motionEvent.getActionMasked()) {
            case mx.View_android_theme /*0*/:
                a = a(motionEvent);
                this.G = a;
                if (this.H != null) {
                    this.H.a((int) motionEvent.getX());
                    break;
                }
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (!this.G || this.i == null) {
                    a = false;
                } else if (a(motionEvent) && this.i.a(this)) {
                    a = true;
                } else {
                    a = false;
                }
                this.G = false;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                this.G = false;
                a = false;
                break;
            default:
                a = false;
                break;
        }
        if (a || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    private boolean a(MotionEvent motionEvent) {
        if (this.E == null || this.i == null) {
            return false;
        }
        if (getStatusIconPosition() == 0) {
            if (motionEvent.getX() <= ((float) getCompoundPaddingLeft())) {
                return true;
            }
            return false;
        } else if (motionEvent.getX() < ((float) (getWidth() - getCompoundPaddingRight()))) {
            return false;
        } else {
            return true;
        }
    }

    protected int[] onCreateDrawableState(int i) {
        int i2;
        int i3 = 0;
        int[] iArr = null;
        if (this.z) {
            i2 = 1;
            iArr = b;
        } else {
            i2 = 0;
        }
        if (!TextUtils.isEmpty(this.u)) {
            i2++;
            iArr = iArr == null ? c : d;
        }
        if (this.D != null) {
            i3 = this.D.length;
        }
        int[] onCreateDrawableState = super.onCreateDrawableState((i2 + i3) + i);
        if (iArr != null) {
            mergeDrawableStates(onCreateDrawableState, iArr);
        }
        if (this.D != null) {
            mergeDrawableStates(onCreateDrawableState, this.D);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        a();
        if (this.H != null) {
            this.H.setState(getDrawableState());
        }
    }

    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        b();
    }

    public void setError(@StringRes int i) {
        setError(getContext().getResources().getText(i), null);
    }

    public void setError(CharSequence charSequence) {
        setError(charSequence, null);
    }

    public void setError(CharSequence charSequence, Drawable drawable) {
        if (!TextUtils.equals(this.u, charSequence)) {
            this.u = charSequence;
            this.q = null;
            refreshDrawableState();
            if (drawable != null) {
                setStatusIcon(drawable);
            }
            requestLayout();
        }
    }

    public CharSequence getError() {
        return this.u;
    }

    public void e() {
        setError(null);
    }

    private void a() {
        if (this.j) {
            this.p = this.n.getColorForState(getDrawableState(), 0);
            this.A = this.y.getColorForState(getDrawableState(), 0);
            this.v = this.s.getColorForState(getDrawableState(), 0);
            invalidate();
        }
    }

    private String getCharacterCounterText() {
        if (this.w == 0) {
            return BuildConfig.VERSION_NAME;
        }
        int i = this.x;
        int length = getText().length();
        switch (this.w) {
            case WireMessage.WIRE_CHAT /*1*/:
                return String.format(this.B, new Object[]{Integer.valueOf(length), Integer.valueOf(i)});
            case WireMessage.WIRE_CONTROL /*2*/:
                return String.format(this.C, new Object[]{Integer.valueOf(i - length)});
            default:
                return BuildConfig.VERSION_NAME;
        }
    }

    private CharSequence getMessageToDisplay() {
        return TextUtils.isEmpty(this.u) ? this.t : this.u;
    }

    public boolean f() {
        return this.z;
    }

    public void setLabelColor(ColorStateList colorStateList) {
        this.n = colorStateList;
        a();
    }

    public void setLabelText(@StringRes int i) {
        setLabelText(getContext().getResources().getText(i));
    }

    public void setLabelText(CharSequence charSequence) {
        if (!TextUtils.equals(this.m, charSequence)) {
            this.m = charSequence;
            this.l = null;
            requestLayout();
        }
    }

    public CharSequence getLabelText() {
        return this.m;
    }

    public void setHelperMessage(@StringRes int i) {
        setHelperMessage(getContext().getResources().getText(i));
    }

    public void setHelperMessage(CharSequence charSequence) {
        if (!TextUtils.equals(this.t, charSequence)) {
            this.t = charSequence;
            this.q = null;
            requestLayout();
        }
    }

    public CharSequence getHelperMessage() {
        return this.t;
    }

    public void setUnderlineStyle(@StyleRes int i) {
        csl csl;
        if (i != 0) {
            csl = new csl(getContext(), i);
            csl.setBounds(0, 0, (getWidth() - getPaddingLeft()) - getPaddingRight(), this.f);
        } else {
            csl = null;
        }
        if (this.H != null) {
            this.H.setCallback(null);
            unscheduleDrawable(this.H);
        }
        if (csl != null) {
            csl.setCallback(this);
        }
        this.H = csl;
        requestLayout();
    }

    public void setMessageColor(ColorStateList colorStateList) {
        this.s = colorStateList;
        a();
    }

    public void setCounterColor(ColorStateList colorStateList) {
        this.y = colorStateList;
        a();
    }

    public void setStatusIcon(Drawable drawable) {
        if (this.E != drawable) {
            this.E = drawable;
            Drawable[] compoundDrawables = getCompoundDrawables();
            if (getStatusIconPosition() == 0) {
                super.setCompoundDrawablesWithIntrinsicBounds(this.E, compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
            } else {
                super.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], this.E, compoundDrawables[3]);
            }
        }
    }

    public int getStatusIconPosition() {
        int i = 0;
        switch (this.F) {
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.k) {
                    return 1;
                }
                return 0;
            case WireMessage.WIRE_AUTH /*3*/:
                if (!this.k) {
                    i = 1;
                }
                return i;
            default:
                return this.F;
        }
    }

    private void b() {
        boolean z = this.w != 0 && this.x > 0 && getText().length() > this.x;
        if (z != this.z) {
            this.z = z;
            refreshDrawableState();
        }
    }

    public void setCharacterCounterMode(int i) {
        if (this.w != i) {
            this.w = i;
            b();
            refreshDrawableState();
        }
    }

    public int getCharacterCounterMode() {
        return this.w;
    }

    public void setMaxCharacterCount(int i) {
        if (this.x != i) {
            this.x = i;
            boolean z = this.z;
            b();
            if (z != this.z) {
                refreshDrawableState();
            }
        }
    }

    public int getMaxCharacterCount() {
        return this.x;
    }

    public void setOnStatusIconClickListener(ao aoVar) {
        this.i = aoVar;
    }

    public void setExtraState(int[] iArr) {
        if (!Arrays.equals(this.D, iArr)) {
            this.D = iArr;
            refreshDrawableState();
        }
    }

    void setRenderRTL(boolean z) {
        this.k = z;
    }

    void setStatusIconPosition(int i) {
        this.F = i;
    }

    public static void setUseCustomFont(boolean z) {
        a = z;
    }
}
