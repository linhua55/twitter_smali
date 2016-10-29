package defpackage;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import com.twitter.android.dm.r;
import com.twitter.android.dm.w;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import java.util.Collections;

/* compiled from: Twttr */
/* renamed from: vj */
class vj extends ab {
    final /* synthetic */ Tweet a;
    final /* synthetic */ TwitterUser b;
    final /* synthetic */ vi c;

    vj(vi viVar, Tweet tweet, TwitterUser twitterUser) {
        this.c = viVar;
        this.a = tweet;
        this.b = twitterUser;
    }

    public void a(View view, MotionEvent motionEvent) {
        Activity a = this.c.d();
        if (a != null) {
            NativeCardUserAction a2 = NativeCardUserAction.a(this.c.e(), view, motionEvent, 0);
            this.c.b.d("click", this.c.c(), a2);
            this.c.b.a(PromotedEvent.n, a2);
            a.startActivity(r.a(this.c.a, ((w) new w().a(new as(this.a)).a(Collections.singletonList(this.b)).a(this.c.l)).c(true).b(a.getString(2131363072)).a(2131363072).d()));
        }
    }
}
