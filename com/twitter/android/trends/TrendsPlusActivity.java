package com.twitter.android.trends;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.android.ListFragmentActivity;
import com.twitter.android.ic;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bex;

/* compiled from: Twttr */
public class TrendsPlusActivity extends ListFragmentActivity implements OnClickListener, j, m {
    private final h a;
    private final b b;
    private TextView c;
    private boolean d;

    public TrendsPlusActivity() {
        this.a = new h();
        this.b = new b();
    }

    protected CharSequence a(Intent intent) {
        if (intent.getBooleanExtra("show_header", true)) {
            return null;
        }
        return getResources().getString(2131363954);
    }

    protected ic a(Intent intent, t tVar) {
        TwitterListFragment trendsPlusFragment = new TrendsPlusFragment();
        com.twitter.app.common.list.j jVar = (com.twitter.app.common.list.j) ((com.twitter.app.common.list.j) com.twitter.app.common.list.j.a(intent).b(2131363968)).c(2131363969);
        if (intent != null) {
            jVar.a("show_header", intent.getBooleanExtra("show_header", true));
        } else {
            jVar.a("show_header", true);
        }
        ((com.twitter.app.common.list.j) ((com.twitter.app.common.list.j) jVar.a("type", 28)).b("timeline_tag", "TRENDSPLUS")).h(true);
        trendsPlusFragment.a(jVar.b());
        return new ic(trendsPlusFragment);
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.d(true);
        return tVar;
    }

    protected void onPause() {
        this.J.b(this.a);
        super.onPause();
    }

    protected void onResume() {
        super.onResume();
        this.J.a(this.a);
        if (this.d) {
            this.c.callOnClick();
            this.d = false;
        }
    }

    public int b(w wVar) {
        super.b(wVar);
        ToolBar j = wVar.j();
        bca a = j.a(2131953426);
        Session ab = ab();
        a.b(false);
        j.setCustomView(this.c);
        a(j, ab);
        return 2;
    }

    private void a(ToolBar toolBar, Session session) {
        toolBar.a(2131953496).b(k.a(session));
    }

    public boolean a(w wVar) {
        super.a(wVar);
        if (ab().d()) {
            wVar.a(2132017199);
        }
        return true;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.c = (TextView) LayoutInflater.from(this).inflate(2130969378, null);
        this.c.setOnClickListener(this);
        this.d = getIntent().getBooleanExtra("focus_search_bar", false);
    }

    public void onClick(View view) {
        if (view.getId() == 2131953068) {
            J();
            N().b(this.c.getText());
        }
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953496) {
            Session ab = ab();
            UserSettings j = ab.j();
            if (j != null) {
                j.B = true;
                this.J.a(bex.a(this, ab, j, true, null));
            }
            acVar.f(false);
            bbu.a(new TwitterScribeLog(ab.g()).b("trendsplus", "search", "menu", "get_tailored_trends", "click"));
            return true;
        } else if (a != 2131953495) {
            return super.a(acVar);
        } else {
            Session ab2 = ab();
            M();
            UserSettings j2 = ab2.j();
            if (j2 == null || !j2.B) {
                startActivityForResult(new Intent(this, TrendsLocationsActivity.class), 1);
            } else {
                ((ec) ((ec) ((ec) new ec(1).a(2131363963)).b(2131363962)).d(2131363961)).i().a((j) this).a((m) this).a(getSupportFragmentManager());
            }
            bbu.a(new TwitterScribeLog(ab2.g()).b("trendsplus", "search", "menu", "change_location", "click"));
            return true;
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1 && i2 == -1) {
            Session ab = ab();
            startActivityForResult(new Intent(this, TrendsLocationsActivity.class), 1);
            bbu.a(new TwitterScribeLog(ab.g()).b("trendsplus", "search", "trends_dialog", "confirm_change_location", "click"));
        }
    }

    public void a(DialogInterface dialogInterface, int i) {
        if (i == 1) {
            bbu.a(new TwitterScribeLog(ab().g()).b("trendsplus", "search", "trends_dialog", "keep_tailored_trends", "click"));
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.b.a(i, i2, intent, ab(), this, X(), c());
    }

    public TrendsPlusFragment c() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(2131951923);
        if (findFragmentById instanceof TrendsPlusFragment) {
            return (TrendsPlusFragment) findFragmentById;
        }
        return null;
    }
}
