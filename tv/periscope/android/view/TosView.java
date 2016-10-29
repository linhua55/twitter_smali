package tv.periscope.android.view;

import android.content.Context;
import android.support.annotation.ColorRes;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import dct;

/* compiled from: Twttr */
public class TosView extends PsTextView {
    public TosView(Context context) {
        super(context);
    }

    public TosView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TosView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(@StringRes int i, @ColorRes int i2, OnClickListener onClickListener, OnClickListener onClickListener2) {
        dct.a(this, getResources().getString(i), getResources().getColor(i2), new OnClickListener[]{onClickListener, onClickListener2});
    }
}
