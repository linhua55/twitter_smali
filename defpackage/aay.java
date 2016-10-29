package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ListView;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.util.m;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aay */
class aay implements aaw {
    private final aba a;
    private final TwitterScribeAssociation b;
    private final ScribeItem c;
    private long d;
    private boolean e;
    private boolean f;

    aay(Context context, TwitterScribeAssociation twitterScribeAssociation, ScribeItem scribeItem, long j, long j2) {
        this.b = twitterScribeAssociation;
        this.c = scribeItem;
        this.a = new aba(this.b, context, j, j2);
    }

    public void a(View view, Tweet tweet) {
        if (this.f) {
            this.a.a(view, tweet);
            if (!this.e) {
                this.a.a(m.b(), false);
            }
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new aaz(this, view, tweet));
    }

    public void a(int i) {
        if (i == 1) {
            this.f = true;
            this.d = m.b();
        } else if (i == 2) {
            this.e = true;
        } else if (i == 0) {
            long j;
            if (this.e) {
                j = this.d;
            } else {
                j = m.b();
            }
            this.a.a(j, false);
            this.e = false;
        }
    }

    public void a(ListView listView) {
        this.a.a(listView);
        this.a.a(m.b(), false);
    }

    public void a() {
        this.a.a(null);
    }

    public void a(long j, long j2) {
        String str = null;
        String a = this.b != null ? this.b.a() : null;
        if (this.b != null) {
            str = this.b.b();
        }
        a = ScribeLog.a(a, str, "stream:linger:results");
        List a2 = this.a.a(j2, true);
        if (!a2.isEmpty()) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(a)).a(this.c)).b(a2));
            a2.clear();
        }
    }
}
