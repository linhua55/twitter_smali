package com.twitter.android.media.widget;

import android.os.AsyncTask;
import cgu;
import sw;
import sx;

/* compiled from: Twttr */
public class af implements sw<String, String> {
    AsyncTask<?, ?, ?> a;
    final /* synthetic */ FoundMediaSearchView b;

    public af(FoundMediaSearchView foundMediaSearchView) {
        this.b = foundMediaSearchView;
    }

    public void a(String str, sx<String, String> sxVar) {
        a();
        if (str.isEmpty()) {
            sxVar.a(str, cgu.f());
        } else {
            this.a = new ag(this, str, this.b.getContext().getApplicationContext(), sxVar).execute(new Void[0]);
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.cancel(false);
            this.a = null;
        }
    }
}
