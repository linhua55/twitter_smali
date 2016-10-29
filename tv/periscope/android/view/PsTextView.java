package tv.periscope.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import dcv;
import dda;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsTextView extends TextView {
    public PsTextView(Context context) {
        super(context);
        a(context, null);
    }

    public PsTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public PsTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        dda.a(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PsTextView);
        try {
            setTypeface(u.a(context, obtainStyledAttributes.getString(p.PsTextView_ps__font)));
        } catch (Throwable e) {
            dcv.b("PsTextView", "Could not get typeface:  " + this + e.getMessage(), e);
        }
        obtainStyledAttributes.recycle();
    }
}
