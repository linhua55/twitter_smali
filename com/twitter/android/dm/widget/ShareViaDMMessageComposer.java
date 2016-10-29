package com.twitter.android.dm.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.twitter.model.core.as;
import com.twitter.util.aj;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class ShareViaDMMessageComposer extends DMMessageComposer {
    private boolean d;

    public ShareViaDMMessageComposer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShareViaDMMessageComposer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        findViewById(2131952723).setVisibility(8);
    }

    public void a(as asVar, String str, String str2) {
        this.a.setQuote(asVar);
        if (aj.b(str)) {
            this.a.a(str, null);
        }
        this.a.setHintText((String) e.b(str2, getResources().getString(2131361863)));
    }

    public void setHasValidRecipients(boolean z) {
        this.d = z;
        m();
    }

    void m() {
        Button button = this.b;
        boolean z = this.d && this.a.n();
        button.setEnabled(z);
    }
}
