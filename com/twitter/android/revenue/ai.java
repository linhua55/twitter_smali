package com.twitter.android.revenue;

import android.app.Activity;
import android.content.Intent;
import bbu;
import cni;
import com.twitter.android.GalleryActivity;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import defpackage.cbp;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ai implements ah {
    private final WeakReference<Activity> a;
    private final Session b;
    private final TwitterScribeAssociation c;

    public ai(Activity activity, Session session, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = new WeakReference(activity);
        this.b = session;
        this.c = twitterScribeAssociation;
    }

    public void a(Tweet tweet, MediaEntity mediaEntity, BaseMediaImageView baseMediaImageView) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            String a = a(tweet, "platform_photo_card", "click");
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.b.g()).a(activity, tweet, this.c, null).b(new String[]{a})).a(this.c));
            if (!(tweet == null || tweet.f == null)) {
                bbu.a(cbp.a(PromotedEvent.p, tweet.f).a());
            }
            a(activity, tweet, mediaEntity, baseMediaImageView);
        }
    }

    private void a(Activity activity, Tweet tweet, MediaEntity mediaEntity, BaseMediaImageView baseMediaImageView) {
        Intent putExtra = new Intent(activity, GalleryActivity.class).putExtra("statusId", tweet.H).putExtra("etc", false).putExtra("show_tw", true).putExtra("association", this.c);
        if (tweet.f != null) {
            ab.a(putExtra, "promoted_content", tweet.f, cni.a);
        }
        ab.a(putExtra, "media", mediaEntity, MediaEntity.a);
        putExtra.putExtra("source_tweet_id", mediaEntity.i);
        if (baseMediaImageView != null) {
            GalleryActivity.a(activity, putExtra, baseMediaImageView);
        } else {
            activity.startActivityForResult(putExtra, 9151);
        }
    }

    private String a(Tweet tweet, String str, String str2) {
        return TwitterScribeLog.a(this.c, Tweet.b(tweet), str, str2);
    }
}
