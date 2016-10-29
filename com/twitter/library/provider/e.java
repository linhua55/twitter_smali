package com.twitter.library.provider;

import android.content.ContentResolver;
import android.net.Uri;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class e {
    private final Set<Uri> a;
    private final ContentResolver b;

    public e(ContentResolver contentResolver) {
        this.a = new HashSet();
        this.b = contentResolver;
    }

    public void a(Uri... uriArr) {
        synchronized (this.a) {
            Collections.addAll(this.a, uriArr);
        }
    }

    public void a() {
        Set<Uri> hashSet = new HashSet();
        synchronized (this.a) {
            hashSet.addAll(this.a);
            this.a.clear();
        }
        for (Uri notifyChange : hashSet) {
            this.b.notifyChange(notifyChange, null);
        }
    }
}
