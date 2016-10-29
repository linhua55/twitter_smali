package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.profiles.as;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: anb */
class anb implements OnClickListener {
    final /* synthetic */ MediaEntity a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ TwitterScribeAssociation c;
    final /* synthetic */ Activity d;
    final /* synthetic */ ana e;

    anb(ana ana, MediaEntity mediaEntity, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, Activity activity) {
        this.e = ana;
        this.a = mediaEntity;
        this.b = tweet;
        this.c = twitterScribeAssociation;
        this.d = activity;
    }

    public void onClick(View view) {
        if (this.a.k != null) {
            as.a(this.a.k.c, this.b, this.c, this.d);
        }
    }
}
