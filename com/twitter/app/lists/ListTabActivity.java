package com.twitter.app.lists;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.twitter.android.AbsTabbedPageFragmentActivity;
import com.twitter.android.TimelineFragment;
import com.twitter.android.b;
import com.twitter.android.mx;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.app.users.UsersFragment;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.provider.cw;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.model.core.cg;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bln;
import defpackage.blp;
import defpackage.blu;
import defpackage.blv;
import defpackage.bus;
import java.util.Arrays;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ListTabActivity extends AbsTabbedPageFragmentActivity implements b, m {
    public static final String[] c;
    private static final Uri q;
    private static final Uri r;
    long d;
    long e;
    String f;
    String g;
    long h;
    String i;
    int j;
    String k;
    String l;
    boolean m;
    l n;
    List<at> o;
    int p;
    private b s;

    public ListTabActivity() {
        this.j = 0;
    }

    static {
        c = new String[]{"ev_content"};
        q = Uri.parse("lists://tweets");
        r = Uri.parse("lists://members");
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.c(false);
        tVar.d(bus.a().c() ? 2130968999 : 2130968941);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.s = new b(this, this);
        this.h = intent.getLongExtra("owner_id", 0);
        this.g = intent.getStringExtra("creator_full_name");
        this.m = intent.getBooleanExtra("is_private", false);
        this.f = intent.getStringExtra("screen_name");
        this.k = intent.getStringExtra("slug");
        this.e = intent.getLongExtra("creator_id", 0);
        this.d = intent.getLongExtra("list_id", -1);
        if ((this.d <= 0 || this.e <= 0) && aj.b(this.f) && aj.b(this.k)) {
            b(new blv(this, ab(), this.d, this.f, this.k), 5);
        } else {
            l();
        }
        this.i = intent.getStringExtra("list_name");
        if (this.i != null) {
            setTitle(this.i);
        }
        N().a("list");
    }

    private void a(boolean z) {
        DockLayout dockLayout = (DockLayout) findViewById(2131952323);
        ProgressBar progressBar = (ProgressBar) findViewById(2131952568);
        if (z) {
            dockLayout.setVisibility(8);
            progressBar.setVisibility(0);
            return;
        }
        dockLayout.setVisibility(0);
        progressBar.setVisibility(8);
    }

    private void l() {
        j();
        a(this.o);
        g().a((b) this);
        Intent intent = getIntent();
        if (intent.hasExtra("tab") && "list_members".equals(intent.getStringExtra("tab"))) {
            this.a.setCurrentItem(1);
        }
    }

    protected l o_() {
        if (this.n == null) {
            this.n = new l(this, ab().e(), "lists_prefs");
        }
        return this.n;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017172);
        wVar.a(2132017198);
        return true;
    }

    public int b(w wVar) {
        boolean z;
        boolean z2 = true;
        super.b(wVar);
        ToolBar j = wVar.j();
        boolean z3 = this.e == ab().g();
        j.a(2131953452).b(z3);
        j.a(2131953453).b(z3);
        bca a = j.a(2131953454);
        if (z3 || this.j != 2) {
            z = false;
        } else {
            z = true;
        }
        a.b(z);
        bca a2 = j.a(2131953455);
        if (z3 || this.j != 1) {
            z3 = false;
        } else {
            z3 = true;
        }
        a2.b(z3);
        bca a3 = j.a(2131953473);
        if (this.m) {
            z2 = false;
        }
        a3.b(z2);
        return 2;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953452) {
            Intent intent = getIntent();
            Intent intent2 = new Intent(this, ListCreateEditActivity.class);
            intent2.putExtra("list_id", this.d);
            intent2.putExtra("name", intent.getStringExtra("list_name"));
            intent2.putExtra("description", intent.getStringExtra("list_description"));
            intent2.putExtra("full_name", intent.getStringExtra("list_fullname"));
            intent2.putExtra("is_private", intent.getBooleanExtra("is_private", false));
            startActivityForResult(intent2, 1);
            return true;
        } else if (a == 2131953453) {
            ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131362910)).b(2131362911)).d(2131364205)).f(2131363158)).i().a(getSupportFragmentManager());
            return true;
        } else {
            if (a == 2131953455) {
                b(new blu(getApplicationContext(), ab(), this.h, ab().g(), this.d, 5), 3);
            } else if (a == 2131953454) {
                b(new bln(getApplicationContext(), ab(), this.h, ab().g(), this.d, 5), 2);
            } else if (a == 2131953473) {
                if (aj.b(this.f) && aj.b(this.k) && aj.b(this.g)) {
                    aq.a(this, this.f, this.f, this.k, this.i, this.l);
                    bbu.a(new TwitterScribeLog(ab().g()).b("list::list::share"));
                } else {
                    this.p = 1;
                    b(new blv(this, ab(), this.d, this.f, this.k), 5);
                }
            }
            return super.a(acVar);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != 0) {
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                    Intent intent2 = getIntent();
                    CharSequence stringExtra = intent.getStringExtra("name");
                    intent2.putExtra("list_name", stringExtra);
                    intent2.putExtra("list_description", intent.getStringExtra("description"));
                    intent2.putExtra("list_fullname", intent.getStringExtra("full_name"));
                    intent2.putExtra("is_private", intent.getBooleanExtra("is_private", false));
                    setTitle(stringExtra);
                default:
            }
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar = (aa) e.a(xVar.l().b());
        int i2;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!aaVar.b()) {
                    Toast.makeText(this, 2131362909, 1).show();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (aaVar.d() == 200) {
                    this.j = 1;
                    i2 = 2131362919;
                    bbu.a(new TwitterScribeLog(ab().g()).b("list::::subscribe"));
                } else {
                    i2 = 2131362905;
                }
                Y().h();
                Toast.makeText(this, i2, 1).show();
            case WireMessage.WIRE_AUTH /*3*/:
                if (aaVar.d() == 200) {
                    this.j = 2;
                    i2 = 2131362921;
                    bbu.a(new TwitterScribeLog(ab().g()).b("list::::unsubscribe"));
                } else {
                    i2 = 2131362918;
                }
                Y().h();
                Toast.makeText(this, i2, 1).show();
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (aaVar.d() == 200 || aaVar.d() == 404) {
                    i();
                }
            case mx.UserView_actionButtonPaddingRight /*5*/:
                a(false);
                cg cgVar = ((blv) xVar).a;
                if (xVar.U()) {
                    this.e = cgVar.n.bf_();
                    this.d = cgVar.bf_();
                    this.k = cgVar.m;
                    this.f = cgVar.n.k;
                    this.g = cgVar.n.c();
                    this.i = cgVar.h;
                    this.l = cgVar.j;
                    if (this.p == 1) {
                        aq.a(this, this.g, this.f, this.k, this.i, this.l);
                        bbu.a(new TwitterScribeLog(xVar.N().c).b("list::list::share"));
                        return;
                    }
                    l();
                    if (this.i != null) {
                        setTitle(this.i);
                    }
                } else if (aaVar.d() == 404) {
                    Toast.makeText(this, 2131362900, 1).show();
                    finish();
                }
            default:
        }
    }

    void i() {
        this.s.startQuery(2, null, cw.b.buildUpon().appendEncodedPath(String.valueOf(this.d)).appendQueryParameter("ownerId", String.valueOf(ab().g())).build(), c, "list_mapping_user_id=?", new String[]{Long.toString(this.h)}, null);
    }

    void j() {
        Intent intent = getIntent();
        if (this.o == null) {
            int i;
            int i2;
            if (this.h == ab().g()) {
                i = 1;
            } else {
                boolean z = false;
            }
            j jVar = (j) ((j) ((j) a(j.a(getIntent()))).c(this.e)).b(2131362899);
            if (i != 0) {
                i2 = 2131363228;
            } else {
                i2 = 2131362898;
            }
            g b = ((j) ((j) ((j) ((j) jVar.c(i2)).d(2131951721)).a("type", 9)).a("tag", this.d)).b();
            com.twitter.app.users.aa aaVar = (com.twitter.app.users.aa) ((com.twitter.app.users.aa) ((com.twitter.app.users.aa) a(com.twitter.app.users.aa.a(getIntent()))).c(this.e)).b(2131362897);
            if (i != 0) {
                i = 2131363227;
            } else {
                i = 2131362896;
            }
            g d = ((com.twitter.app.users.aa) ((com.twitter.app.users.aa) ((com.twitter.app.users.aa) ((com.twitter.app.users.aa) ((com.twitter.app.users.aa) aaVar.c(i)).d(2131951737)).g(intent.getIntExtra("type", 4))).a(this.d)).d(intent.getBooleanExtra("follow", false))).d();
            this.o = Arrays.asList(new at[]{new au(q, TimelineFragment.class).a(b).a(getString(2131363415)).a(), new au(r, UsersFragment.class).a(getString(2131363931)).a(d).a()});
        }
        if (this.d > 0 && this.h > 0) {
            this.s.startQuery(1, null, cw.b.buildUpon().appendEncodedPath(String.valueOf(this.d)).appendQueryParameter("ownerId", String.valueOf(ab().g())).build(), c, "list_mapping_user_id=?", new String[]{Long.toString(this.h)}, null);
        } else if (this.d <= 0 || this.e <= 0) {
            Toast.makeText(this, 2131362916, 1).show();
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1 && i2 == -1) {
            Session c = aa().c();
            b(new blp(getApplicationContext(), c, this.d, c.g()), 1);
            bbu.a(new TwitterScribeLog(ab().g()).b("me:lists:list::delete"));
            finish();
        }
    }

    public void a(int i) {
        if (i == 0) {
            bbu.a(new TwitterScribeLog(ab().g()).b("list:tweets:::impression"));
            N().b("tweets");
        } else if (i == 1) {
            bbu.a(new TwitterScribeLog(ab().g()).b("list:members:::impression"));
            N().b("members");
        }
    }
}
