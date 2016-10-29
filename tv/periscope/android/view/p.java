package tv.periscope.android.view;

import android.support.annotation.NonNull;
import android.text.TextPaint;
import android.text.style.ClickableSpan;

/* compiled from: Twttr */
public abstract class p extends ClickableSpan {
    private int a;

    public p(int i) {
        this.a = i;
    }

    public void updateDrawState(@NonNull TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        textPaint.setColor(this.a);
    }
}
