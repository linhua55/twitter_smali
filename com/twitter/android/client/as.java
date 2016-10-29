package com.twitter.android.client;

import android.content.Context;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class as extends p {
    private final Context a;
    private final Tweet b;
    private final TwitterScribeAssociation c;
    private final MediaEntity d;

    as(Context context, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, MediaEntity mediaEntity) {
        this.a = context;
        this.b = tweet;
        this.c = twitterScribeAssociation;
        this.d = mediaEntity;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
        r8 = this;
        r1 = 2;
        r2 = -1;
        r0 = 0;
        r3 = new android.content.Intent;
        r4 = r8.a;
        r5 = com.twitter.android.GalleryActivity.class;
        r3.<init>(r4, r5);
        r4 = "statusId";
        r5 = r8.b;
        r6 = r5.H;
        r3 = r3.putExtra(r4, r6);
        r4 = "show_tw";
        r3 = r3.putExtra(r4, r0);
        r4 = "media";
        r5 = r8.d;
        r6 = com.twitter.model.core.MediaEntity.a;
        r5 = com.twitter.util.serialization.m.a(r5, r6);
        r3 = r3.putExtra(r4, r5);
        r4 = "source_tweet_id";
        r5 = r8.d;
        r6 = r5.i;
        r3 = r3.putExtra(r4, r6);
        r4 = "association";
        r5 = r8.c;
        r4 = r3.putExtra(r4, r5);
        r3 = r8.c;
        if (r3 == 0) goto L_0x005f;
    L_0x0045:
        r3 = r8.c;
        r3 = r3.a();
        r5 = r3.hashCode();
        switch(r5) {
            case -906336856: goto L_0x007b;
            case -309425751: goto L_0x0070;
            case 3208415: goto L_0x0065;
            default: goto L_0x0052;
        };
    L_0x0052:
        r3 = r2;
    L_0x0053:
        switch(r3) {
            case 0: goto L_0x0086;
            case 1: goto L_0x0057;
            case 2: goto L_0x0088;
            default: goto L_0x0056;
        };
    L_0x0056:
        r0 = r2;
    L_0x0057:
        if (r0 <= 0) goto L_0x005f;
    L_0x0059:
        r1 = "context";
        r4.putExtra(r1, r0);
    L_0x005f:
        r0 = r8.a;
        r0.startActivity(r4);
        return;
    L_0x0065:
        r5 = "home";
        r3 = r3.equals(r5);
        if (r3 == 0) goto L_0x0052;
    L_0x006e:
        r3 = r0;
        goto L_0x0053;
    L_0x0070:
        r5 = "profile";
        r3 = r3.equals(r5);
        if (r3 == 0) goto L_0x0052;
    L_0x0079:
        r3 = 1;
        goto L_0x0053;
    L_0x007b:
        r5 = "search";
        r3 = r3.equals(r5);
        if (r3 == 0) goto L_0x0052;
    L_0x0084:
        r3 = r1;
        goto L_0x0053;
    L_0x0086:
        r0 = 4;
        goto L_0x0057;
    L_0x0088:
        r0 = r8.c;
        r0 = r0.b();
        r2 = "cluster";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0099;
    L_0x0097:
        r0 = 3;
        goto L_0x0057;
    L_0x0099:
        r0 = r1;
        goto L_0x0057;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.client.as.a():void");
    }

    public int b() {
        return 1;
    }
}
