package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.content.CursorLoader;

/* compiled from: Twttr */
public class bu extends CursorLoader {
    private boolean a;
    private boolean b;

    public bu(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context, uri, strArr, str, strArr2, str2);
        this.a = true;
    }

    public boolean a() {
        return this.b;
    }

    public bu a(boolean z) {
        this.a = z;
        return this;
    }

    public void onContentChanged() {
        if (this.a) {
            super.onContentChanged();
        }
    }

    protected void onForceLoad() {
        super.onForceLoad();
        this.b = true;
    }

    protected boolean onCancelLoad() {
        this.b = false;
        return super.onCancelLoad();
    }

    public void deliverResult(Cursor cursor) {
        this.b = false;
        super.deliverResult(cursor);
    }
}
