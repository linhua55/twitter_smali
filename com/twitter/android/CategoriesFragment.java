package com.twitter.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ListView;
import ccg;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.users.q;
import com.twitter.library.api.j;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cp;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import defpackage.bbu;
import defpackage.bdk;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class CategoriesFragment extends TwitterListFragment<Cursor, bdk<Cursor>> implements qx {
    private boolean a;
    private boolean b;
    private boolean c;
    private SharedPreferences d;
    private Set<String> e;
    private ArrayList<TwitterScribeItem> f;
    private ArrayList<TwitterScribeItem> g;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = getActivity().getPreferences(0);
        h C = C();
        this.a = C.a("onboarding", false);
        this.c = C.a("is_hidden", false);
        if (bundle == null) {
            if (this.a) {
                bbu.a(new TwitterScribeLog(aT().g()).b(p(), q(), null, null, "impression"));
            }
            this.b = false;
        } else {
            this.b = bundle.getBoolean("state_fetched", false);
            this.c = bundle.getBoolean("is_hidden", this.c);
        }
        this.e = new HashSet();
        this.f = new ArrayList();
        this.g = new ArrayList();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ap().a(new bh(this, getActivity()));
    }

    public void onStop() {
        t();
        super.onStop();
    }

    public void a() {
        super.a();
        ac_();
        if (!this.c) {
            r();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("state_fetched", this.b);
        bundle.putBoolean("is_hidden", this.c);
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(cp.a, this.Y), ccg.a, null, null, null);
    }

    protected void a(int i) {
        c(new j(this.T, this.Z.c(), this.Y), 1, i);
    }

    protected void ac_() {
        super.ac_();
        String string = this.d.getString("loc", BuildConfig.VERSION_NAME);
        if (!(string.isEmpty() || string.equals(getResources().getConfiguration().locale.toString()))) {
            a(3);
        }
        if (((bdk) az()).isEmpty()) {
            a(3);
        }
    }

    protected void g() {
        super.g();
        a(3);
    }

    public void e() {
        Editor edit = this.d.edit();
        edit.putString("loc", getResources().getConfiguration().locale.toString());
        edit.apply();
        super.e();
    }

    protected void a(ListView listView, View view, int i, long j) {
        Cursor cursor = (Cursor) listView.getItemAtPosition(i);
        startActivity(new q().a(cursor.getString(2)).b(cursor.getString(1)).a(6).a(true).b(i).b(true).c(true).a(getActivity()));
    }

    public void m() {
        this.c = false;
        r();
    }

    public void n() {
        this.c = true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 1) {
            this.b = true;
        }
    }

    private String p() {
        return this.a ? "welcome" : "interests";
    }

    private String q() {
        return this.a ? "category" : null;
    }

    private void r() {
        bbu.a(new TwitterScribeLog(aT().g()).b("interests::::impression"));
    }

    private void t() {
        u();
        v();
        this.e.clear();
    }

    private void u() {
        if (!this.f.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.Y).b(p(), q(), null, null, "results")).b(this.f));
            this.f.clear();
        }
    }

    private void v() {
        if (!this.g.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.Y).b(p(), q(), null, "user", "results")).b(this.g));
            this.g.clear();
        }
    }
}
