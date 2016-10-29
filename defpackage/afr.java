package defpackage;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: afr */
class afr extends ClickableSpan {
    final /* synthetic */ int a;
    final /* synthetic */ afq b;

    afr(afq afq, int i) {
        this.b = afq;
        this.a = i;
    }

    public void onClick(View view) {
        if (this.b.j != null) {
            this.b.j.onClick(view);
        }
    }

    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        textPaint.setColor(this.a);
    }
}
