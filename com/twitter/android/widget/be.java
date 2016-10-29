package com.twitter.android.widget;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import bbn;
import com.twitter.media.util.i;

/* compiled from: Twttr */
class be extends i {
    Exception a;
    boolean b;

    be(Context context, boolean z, boolean z2) {
        super(context, z, z2);
    }

    public void unregisterListener(OnLoadCompleteListener<Cursor> onLoadCompleteListener) {
        super.unregisterListener(onLoadCompleteListener);
        this.b = true;
    }

    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            this.a = new RuntimeException("super.deliverResult is not called: isReset, id=" + getId());
            bbn.a(this.a);
        } else if (!isStarted()) {
            this.a = new RuntimeException("super.deliverResult is not called: !isStarted, id=" + getId());
            bbn.a(this.a);
        }
        super.deliverResult(cursor);
    }
}
