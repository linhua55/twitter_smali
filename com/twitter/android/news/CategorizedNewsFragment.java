package com.twitter.android.news;

import android.content.ContentUris;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import com.twitter.android.bu;
import com.twitter.android.metrics.b;
import com.twitter.app.common.base.u;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.t;
import com.twitter.library.client.l;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cx;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.util.collection.n;
import com.twitter.util.serialization.s;
import defpackage.ark;
import defpackage.bbu;
import defpackage.bmk;
import defpackage.cbj;
import defpackage.ccp;
import defpackage.cgu;

/* compiled from: Twttr */
public class CategorizedNewsFragment extends TwitterListFragment<Cursor, a> {
    private String a;
    private String b;
    private b c;
    private int d;
    private boolean e;

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130968668);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m();
    }

    protected void m() {
        this.c = new b("news:timeline:load", "news:timeline:load", ark.m, null);
        this.c.i();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.d = C().b("topicId");
        if (bundle != null) {
            this.e = bundle.getBoolean("forceReload");
        }
        this.a = cbj.a();
        this.b = cbj.b();
        ap().a(new a(getActivity()));
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("forceReload", this.e);
    }

    protected void d() {
        super.d();
        b("news:headline:::impression");
    }

    public void G() {
        super.G();
        b("news:headline:::pull_to_refresh");
    }

    protected Loader<Cursor> q_() {
        this.c.aK_();
        return new bu(getActivity(), ck.a(ContentUris.withAppendedId(cx.a, (long) this.d), aT().g()), ccp.a, "country=? AND language=?", new String[]{this.a, this.b}, null);
    }

    protected void g() {
        a(4);
    }

    protected void a(cgu<Cursor> cgu_android_database_Cursor) {
        super.a((cgu) cgu_android_database_Cursor);
        Cursor e = ((a) az()).e();
        this.c.aL_();
        if (!this.e) {
            a(3);
            this.e = true;
        } else if (this.d == 0 && e != null) {
            a(e);
        }
    }

    protected boolean a(int i) {
        if (!a_(i)) {
            return false;
        }
        this.c.f();
        c(new bmk(getActivity(), aT()).a(this.a).b(this.b).a((long) this.d).a(30), 1, i);
        return true;
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(aT().g()).b(str));
    }

    private void a(String str, long j, String str2) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(str)).a(j)).f(str2));
    }

    protected void a(ListView listView, View view, int i, long j) {
        Cursor cursor = (Cursor) listView.getItemAtPosition(i);
        String string = cursor.getString(3);
        startActivity(new u().d(true).a(getActivity(), NewsDetailActivity.class).putExtra("news_id", string).putExtra("tweet_count", cursor.getInt(9)));
        a("news:headline::details:click", (long) (i - 1), string);
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (ad()) {
            this.c.g();
            this.c.j();
        } else {
            this.c.k();
        }
        if (i == 1 && !xVar.U()) {
            Toast.makeText(this.T, 2131363146, 1).show();
        }
    }

    private void a(Cursor cursor) {
        if (cursor.moveToFirst()) {
            n a = n.a(cursor.getCount());
            while (cursor.moveToNext()) {
                a.c(cursor.getString(3));
            }
            new l(getActivity(), aT().e(), "news").a().a("latestTopNewsIds", a.q(), s.a(s.j)).apply();
        }
    }

    protected void h() {
        b("news:headline::last:impression");
    }

    public int n() {
        return this.d;
    }
}
