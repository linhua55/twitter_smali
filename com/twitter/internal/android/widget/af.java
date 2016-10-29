package com.twitter.internal.android.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Filter.FilterListener;
import android.widget.Filterable;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class af extends Handler {
    private final WeakReference<FilterListener> a;
    private Filterable b;
    private ag c;

    af(Looper looper, FilterListener filterListener) {
        super(looper);
        this.a = new WeakReference(filterListener);
    }

    public void handleMessage(Message message) {
        FilterListener filterListener = (FilterListener) this.a.get();
        if (this.b != null && filterListener != null) {
            CharSequence charSequence = (CharSequence) message.obj;
            this.b.getFilter().filter(charSequence, filterListener);
            if (message.arg1 == 1 && this.c != null) {
                this.c.a(charSequence);
            }
        }
    }

    public void a(Filterable filterable) {
        this.b = filterable;
    }

    public void a(ag agVar) {
        this.c = agVar;
    }
}
