package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* compiled from: Twttr */
public class u extends bu {
    private final long a;

    public u(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2, long j) {
        super(context, uri, strArr, str, strArr2, str2);
        this.a = j;
    }

    public Cursor loadInBackground() {
        return new h(super.loadInBackground(), this.a, getContext());
    }
}
