package com.twitter.android.client;

import android.os.AsyncTask;
import com.twitter.android.HomeTimelineFragment;
import com.twitter.library.provider.di;

/* compiled from: Twttr */
class v extends AsyncTask<Void, Void, Boolean> {
    final /* synthetic */ u a;
    private final HomeTimelineFragment b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    v(u uVar, HomeTimelineFragment homeTimelineFragment) {
        this.a = uVar;
        this.b = homeTimelineFragment;
    }

    protected Boolean a(Void... voidArr) {
        boolean z = true;
        if (di.a(u.a(this.a), u.b(this.a).c).i() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    protected void a(Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            this.b.F();
            u.c(this.a);
        }
    }
}
