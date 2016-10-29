package com.twitter.android.media.stickers.timeline;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import defpackage.bpo;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class c extends AsyncTask<Void, Void, TwitterUser> {
    private final WeakReference<StickerTimelineActivity> a;
    private final Session b;
    private final long c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((TwitterUser) obj);
    }

    c(StickerTimelineActivity stickerTimelineActivity, long j, Session session) {
        this.a = new WeakReference(stickerTimelineActivity);
        this.c = j;
        this.b = session;
    }

    protected TwitterUser a(Void... voidArr) {
        StickerTimelineActivity stickerTimelineActivity = (StickerTimelineActivity) this.a.get();
        if (stickerTimelineActivity == null) {
            return null;
        }
        TwitterUser a = di.a((Context) stickerTimelineActivity, this.b.g()).a(this.c);
        if (a != null) {
            return a;
        }
        stickerTimelineActivity.b(new bpo((Context) stickerTimelineActivity, this.b, this.c, null), 1);
        return null;
    }

    protected void a(TwitterUser twitterUser) {
        StickerTimelineActivity stickerTimelineActivity = (StickerTimelineActivity) this.a.get();
        if (stickerTimelineActivity != null && twitterUser != null) {
            stickerTimelineActivity.h = twitterUser;
            stickerTimelineActivity.r();
        }
    }
}
