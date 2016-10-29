package tv.periscope.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.TextView;
import defpackage.dcv;
import defpackage.dda;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsButton extends Button {
    public PsButton(Context context) {
        super(context);
        a(context, null);
    }

    public PsButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public PsButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        dda.a((TextView) this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PsTextView);
        try {
            setTypeface(u.a(context, obtainStyledAttributes.getString(p.PsTextView_ps__font)));
        } catch (Throwable e) {
            dcv.b("PsButton", "Could not get typeface: " + e.getMessage(), e);
        }
        obtainStyledAttributes.recycle();
    }
}
