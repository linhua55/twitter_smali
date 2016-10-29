package com.twitter.android.timeline;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
public abstract class bf<T extends aw> implements OnClickListener {
    private final int a;
    private final an b;
    private final Class<T> c;

    protected bf(int i, an anVar, Class<T> cls) {
        this.a = i;
        this.b = anVar;
        this.c = cls;
    }

    public void onClick(View view) {
        aw awVar = (aw) this.c.cast(view.getTag(2131951712));
        if (awVar != null) {
            this.b.a(awVar.d(), this.a);
        }
    }
}
