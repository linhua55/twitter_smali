package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService.RemoteViewsFactory;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.provider.ck;
import com.twitter.media.request.ImageResponse;
import com.twitter.model.core.Tweet;
import com.twitter.util.concurrent.h;

/* compiled from: Twttr */
public class cc implements RemoteViewsFactory {
    private final Context a;
    private final cb[] b;
    private WidgetList c;
    private final int d;
    private final WidgetControl e;
    private final long f;
    private final String g;

    public cc(Context context, int i, long j, String str) {
        this.b = new cb[20];
        this.a = context;
        this.d = i;
        this.f = j;
        this.g = str;
        this.e = cd.a(context).a(j);
    }

    public void onCreate() {
        if (this.e != null) {
            this.c = new WidgetList(this.e.e(this.d));
        }
    }

    public void onDataSetChanged() {
        if (this.e != null) {
            this.c = new WidgetList(this.e.e(this.d));
        }
    }

    public void onDestroy() {
    }

    public int getCount() {
        return this.c == null ? 0 : this.c.size();
    }

    public RemoteViews getViewAt(int i) {
        Bitmap bitmap = null;
        if (this.c == null || this.c.size() <= i) {
            return null;
        }
        RemoteViews remoteViews;
        Tweet tweet = (Tweet) this.c.get(i);
        synchronized (this.b) {
            if (this.b[i] == null) {
                this.b[i] = new cb(new RemoteViews(this.a.getPackageName(), 2130969365));
            }
            this.b[i].b = tweet;
            remoteViews = this.b[i].a;
        }
        try {
            Bitmap bitmap2;
            ImageResponse imageResponse = (ImageResponse) h.a(this.e.d().a(UserImageRequest.a(tweet.r, -1)));
            if (imageResponse != null) {
                bitmap2 = (Bitmap) imageResponse.f();
            } else {
                bitmap2 = null;
            }
            bitmap = bitmap2;
        } catch (Throwable th) {
        }
        WidgetControl.a(this.a, remoteViews, tweet, bitmap, this.f, this.g);
        remoteViews.setOnClickFillInIntent(2131952011, new Intent().setData(ck.a(tweet.u, this.f)).putExtra("AbsFragmentActivity_account_name", this.g).putExtra("ref_event", "widget::::click"));
        return remoteViews;
    }

    public RemoteViews getLoadingView() {
        return null;
    }

    public int getViewTypeCount() {
        return 1;
    }

    public long getItemId(int i) {
        return 0;
    }

    public boolean hasStableIds() {
        return true;
    }
}
