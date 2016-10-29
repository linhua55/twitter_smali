package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.util.q;
import com.twitter.media.request.b;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.aai;
import defpackage.aat;
import defpackage.aau;
import defpackage.ccc;
import defpackage.cpb;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class gq extends bu {
    private final long a;
    private List<aai> b;

    gq(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2, long j) {
        String str3;
        if (aj.a((CharSequence) str2)) {
            str3 = "status_groups_type DESC";
        } else {
            str3 = str2;
        }
        super(context, uri, strArr, str, strArr2, str3);
        this.a = j;
    }

    public Cursor loadInBackground() {
        Cursor loadInBackground = super.loadInBackground();
        if (loadInBackground == null || !loadInBackground.moveToFirst()) {
            this.b = n.g();
        } else {
            List arrayList = new ArrayList();
            do {
                a(arrayList, ccc.a.a(loadInBackground), this.a);
            } while (loadInBackground.moveToNext());
            this.b = arrayList;
        }
        return loadInBackground;
    }

    public List<aai> b() {
        return this.b;
    }

    private static void a(List<aai> list, Tweet tweet, long j) {
        if (tweet.h()) {
            for (MediaEntity mediaEntity : j == -1 ? cpb.a(tweet, Size.b) : cpb.a(tweet, j, Size.b)) {
                list.add(new aat(tweet, mediaEntity, q.a(mediaEntity), mediaEntity.x));
            }
        } else if (be.b(tweet)) {
            b w = be.w(tweet);
            if (w != null) {
                list.add(new aau(tweet, w));
            }
        }
    }
}
