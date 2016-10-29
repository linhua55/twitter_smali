package tv.periscope.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.TextView;
import defpackage.dcv;
import defpackage.dda;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class PsEditText extends EditText {
    public PsEditText(Context context) {
        super(context);
        a(context, null);
    }

    public PsEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public PsEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        dda.a((TextView) this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.PsTextView);
        try {
            setTypeface(u.a(context, obtainStyledAttributes.getString(p.PsTextView_ps__font)));
        } catch (Throwable e) {
            dcv.b("PsEditText", "Could not get typeface: " + e.getMessage(), e);
        }
        obtainStyledAttributes.recycle();
    }

    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        editorInfo.imeOptions |= 268435456;
        return onCreateInputConnection;
    }
}
