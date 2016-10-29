package tv.periscope.android.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.widget.ImageView;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsImageView extends ImageView {
    private ColorStateList a;
    @StringRes
    private int b;
    @StringRes
    private int c;

    public PsImageView(Context context) {
        super(context);
        a(context, null, 0);
    }

    public PsImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public PsImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PsImageView, i, 0);
        this.a = obtainStyledAttributes.getColorStateList(p.PsImageView_ps__tint);
        this.b = obtainStyledAttributes.getResourceId(p.PsImageView_ps__toolTipOn, 0);
        this.c = obtainStyledAttributes.getResourceId(p.PsImageView_ps__toolTipOff, 0);
        obtainStyledAttributes.recycle();
    }

    public void setColorFilter(ColorStateList colorStateList) {
        this.a = colorStateList;
        super.setColorFilter(colorStateList.getColorForState(getDrawableState(), 0));
    }

    @StringRes
    public int getToolTipOnText() {
        return this.b;
    }

    @StringRes
    public int getToolTipOffText() {
        return this.c;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.a != null && this.a.isStateful()) {
            a();
        }
    }

    private void a() {
        setColorFilter(this.a.getColorForState(getDrawableState(), 0));
    }
}
