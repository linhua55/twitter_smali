package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: aem */
public class aem implements ael {
    public static final b<Activity, aem> a;
    private final aeo b;
    private final aec c;
    private j d;
    private TwitterScribeAssociation e;

    static {
        a = new aen();
    }

    public static aem a(Activity activity, Session session) {
        return new aem(new aeo(activity), aec.b(activity, session));
    }

    public aem(aeo aeo, aec aec) {
        this.b = aeo;
        this.c = aec;
    }

    public long a() {
        return this.d != null ? this.d.b() : 0;
    }

    public void a(j jVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.d = jVar;
        this.e = twitterScribeAssociation;
    }

    public void c() {
        this.c.a();
    }

    public void b() {
        this.c.a(this.d, this.e);
        this.b.a(this.c.c());
    }

    public View e() {
        return this.b.a();
    }

    public a d() {
        return this.c.b();
    }

    public void a(OnClickListener onClickListener) {
        this.b.a(onClickListener);
        this.c.a(onClickListener);
    }
}
