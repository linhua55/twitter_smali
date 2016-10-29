package defpackage;

import android.content.Intent;
import android.net.Uri.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import bhc;
import com.twitter.android.TweetActivity;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.dms.ae;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: yc */
class yc implements OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ String d;
    final /* synthetic */ ae e;
    final /* synthetic */ ya f;

    yc(ya yaVar, int i, long j, long j2, String str, ae aeVar) {
        this.f = yaVar;
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = str;
        this.e = aeVar;
    }

    public void onClick(View view) {
        if (((bhc) this.f.a).h()) {
            this.f.G.b(this.a);
            return;
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.b).b(new String[]{"messages:thread::shared_tweet_dm:click"})).a((String) e.a(((bhc) this.f.a).h), this.c, this.d));
        this.f.f.startActivity(new Intent(this.f.f, TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(this.e.e.e)).build()));
    }
}
