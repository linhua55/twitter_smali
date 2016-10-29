package tv.periscope.android.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import defpackage.dcz;
import tv.periscope.android.library.i;
import tv.periscope.android.library.j;

@TargetApi(17)
/* compiled from: Twttr */
public class UsernameView extends PsTextView {
    public UsernameView(Context context) {
        super(context);
    }

    public UsernameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UsernameView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setUsername(String str) {
        if (TextUtils.isEmpty(str)) {
            setText("");
        } else {
            setText(dcz.a(getResources(), str));
        }
    }

    public void setVerified(boolean z) {
        if (z) {
            setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, j.ps__ic_verified, 0);
            setCompoundDrawablePadding(getResources().getDimensionPixelOffset(i.ps__drawable_padding));
            return;
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
    }
}
