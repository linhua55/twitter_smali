package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.moments.a;
import cvq;
import rx.subjects.c;

/* compiled from: Twttr */
/* renamed from: aef */
public class aef implements ael {
    private final aec a;
    private final aek b;
    private c<Boolean> c;
    private j d;
    private a e;
    private TwitterScribeAssociation f;

    public static aef a(Activity activity, Session session) {
        return new aef(new aek(activity), aec.a(activity, session));
    }

    public aef(aek aek, aec aec) {
        this(aek, aec, c.q());
    }

    aef(aek aek, aec aec, c<Boolean> cVar) {
        this.a = aec;
        this.b = aek;
        this.c = cVar;
    }

    public long a() {
        return this.d != null ? this.d.b() : 0;
    }

    public void a(j jVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.d = jVar;
        this.f = twitterScribeAssociation;
        this.c.d(cvq.e()).c(new aeg(this, jVar));
    }

    public void a(a aVar) {
        this.e = aVar;
        if (this.e != null) {
            this.c.d(cvq.e()).c(new aeh(this, aVar));
        }
    }

    public void b() {
        if (this.d != null) {
            this.c.d(cvq.e()).c(new aei(this));
        }
    }

    public void c() {
        this.c.bs_();
        this.c = c.q();
        this.d = null;
        this.a.a();
    }

    public void a(OnClickListener onClickListener) {
        this.b.a().setOnClickListener(onClickListener);
        this.a.a(onClickListener);
    }

    public com.twitter.library.widget.a d() {
        return this.a.b();
    }

    public View e() {
        return this.b.a();
    }

    public void a(TwitterUser twitterUser) {
        if (twitterUser == null) {
            this.c.b_(Boolean.valueOf(false));
            return;
        }
        int i = twitterUser.S;
        if (p.d(i)) {
            this.c.b_(Boolean.valueOf(true));
            this.b.b(twitterUser.k);
        } else if (p.e(i)) {
            this.c.b_(Boolean.valueOf(true));
            this.b.c(twitterUser.k);
        } else {
            this.c.b_(Boolean.valueOf(false));
        }
    }
}
