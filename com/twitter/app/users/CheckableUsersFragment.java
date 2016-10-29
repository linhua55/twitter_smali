package com.twitter.app.users;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import bou;
import cdk;
import chd;
import com.twitter.android.bm;
import com.twitter.android.hb;
import com.twitter.android.mx;
import com.twitter.android.widget.PinnedHeaderRefreshableListView;
import com.twitter.android.widget.er;
import com.twitter.android.widget.et;
import com.twitter.android.xs;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.p;
import com.twitter.app.common.list.t;
import com.twitter.library.api.i;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.provider.dg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.PromptView;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bdl;
import defpackage.cbx;
import defpackage.cgu;
import defpackage.cni;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class CheckableUsersFragment extends UsersFragment {
    private boolean E;
    private boolean F;
    private View G;
    private String H;
    private String I;
    private String[] J;
    private String[] K;
    private boolean L;
    private az M;
    private boolean a;
    private hb ab;
    private ArrayList<TwitterUser> ac;

    public /* synthetic */ h C() {
        return r();
    }

    public /* synthetic */ y L() {
        return r();
    }

    public /* synthetic */ g o() {
        return r();
    }

    public i r() {
        return i.a(getArguments());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i r = r();
        this.a = r.d();
        this.E = r.g();
        this.I = r.c();
        this.H = r.b();
        this.L = r.j();
        this.F = cbx.a();
        e.a(this.I);
        String[] h = r.h();
        if (h != null && h.length > 0) {
            this.J = h;
        }
        String[] i = r.i();
        if (i != null && i.length > 0) {
            this.K = i;
        }
        if (bundle == null) {
            this.ac = new ArrayList();
        } else {
            this.ac = bundle.getParcelableArrayList("highlighted_users");
        }
    }

    protected void bc_() {
        if (this.t == 28 && V() == 0) {
            k(4);
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        ap().a((p) this);
        return a;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("highlighted_users", this.ac);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.M = az.a(getActivity());
        aW();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        PinnedHeaderRefreshableListView pinnedHeaderRefreshableListView = (PinnedHeaderRefreshableListView) ap().a;
        this.G = LayoutInflater.from(getActivity()).inflate(2130969384, pinnedHeaderRefreshableListView, false);
        this.G.setBackgroundResource(2131886429);
        pinnedHeaderRefreshableListView.a(this.G, 0);
        pinnedHeaderRefreshableListView.setRedrawOnDirtyHeaderView(this.G.findViewById(2131953264));
    }

    protected void u() {
        super.u();
        if (this.F) {
            k(V() - 1);
        } else {
            aZ();
        }
    }

    protected ViewGroup v() {
        ViewGroup v = super.v();
        if (this.L) {
            v.addView(bm.a(getActivity(), this.H, this.I), new LayoutParams(-1, -2));
        } else {
            View promptView = new PromptView(getActivity());
            promptView.setIsHeader(true);
            promptView.setTitle(this.I);
            v.addView(promptView);
        }
        return v;
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969188);
    }

    protected Intent a(long j, CharSequence charSequence, cni cni) {
        return super.a(j, charSequence, cni).putExtra("override_home", true);
    }

    protected boolean w() {
        return true;
    }

    protected boolean y() {
        return false;
    }

    String e(int i) {
        if (i == 32) {
            return "categories::";
        }
        return super.e(i);
    }

    void B() {
        if (this.t == 32) {
            bbu.a(new TwitterScribeLog(aT().g()).b(i(), "follow_interest_suggestions:::impression"));
            return;
        }
        super.B();
    }

    protected void D() {
        super.D();
        aU();
    }

    private void aU() {
        Context activity = getActivity();
        this.q.a(this);
        View inflate = LayoutInflater.from(activity).inflate(2130969383, ap().a, false);
        a((CheckBox) this.G.findViewById(2131953264), (CheckBox) inflate.findViewById(2131953264));
        a(this.G);
        a(inflate);
        ((TextView) this.G.findViewById(2131953266)).addTextChangedListener(new f(this, (TextView) inflate.findViewById(2131953266)));
        this.q.a(0, new et(inflate));
        this.q.a(2);
    }

    private void a(View view) {
        CheckBox checkBox = (CheckBox) view.findViewById(2131953264);
        TextView textView = (TextView) view.findViewById(2131953265);
        checkBox.setChecked(this.a);
        checkBox.setOnClickListener(this);
        textView.setOnClickListener(this);
    }

    private static void a(CheckBox checkBox, CheckBox checkBox2) {
        b(checkBox, checkBox2);
        b(checkBox2, checkBox);
    }

    private static void b(CheckBox checkBox, CheckBox checkBox2) {
        checkBox.setOnCheckedChangeListener(new g(checkBox2));
    }

    protected void E() {
        if (ad()) {
            CheckBox aV = aV();
            if (aV != null && aV.getVisibility() == 0 && aV.isChecked()) {
                g(true);
            }
            super.E();
            aW();
        }
    }

    protected int F() {
        int F = super.F();
        if (this.ab != null) {
            return F + this.ab.getCount();
        }
        return F;
    }

    public void a(BaseUserView baseUserView, cni cni, Bundle bundle) {
        super.a(baseUserView, cni, bundle);
        if (baseUserView instanceof UserView) {
            UserView userView = (UserView) baseUserView;
            if (userView.t != null) {
                userView.t.setChecked(this.l.contains(Long.valueOf(userView.getUserId())));
            }
        }
    }

    private CheckBox aV() {
        if (this.G != null) {
            return (CheckBox) this.G.findViewById(2131953264);
        }
        return null;
    }

    private void aW() {
        if (this.G != null) {
            TextView textView = (TextView) this.G.findViewById(2131953266);
            if (textView != null) {
                int N = N();
                textView.setText(getActivity().getResources().getString(2131363031, new Object[]{Integer.valueOf(N)}));
                if (N > 0) {
                    aV().setChecked(this.l.size() == N);
                }
            }
        }
    }

    protected void a(View view, int i, long j) {
        UserView userView = (UserView) view;
        userView.t.toggle();
        a(userView, j);
    }

    public void a(UserView userView, long j, int i, int i2) {
        if (i == bcx.user_checkbox) {
            a(userView, j);
        } else {
            super.a(userView, j, i, i2);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953264 || id == 2131953265) {
            if (id == 2131953265) {
                view = aV();
                view.toggle();
            } else {
                CheckBox checkBox = (CheckBox) view;
            }
            g(view.isChecked());
            return;
        }
        super.onClick(view);
    }

    protected void a(cgu<Cursor> cgu_android_database_Cursor) {
        super.a((cgu) cgu_android_database_Cursor);
        CheckBox aV = aV();
        if (aV != null && aV.getVisibility() == 0 && aV.isChecked()) {
            g(true);
        }
        aW();
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        ((PinnedHeaderRefreshableListView) absListView).a(i);
        return super.a(absListView, i, i2, i3, z);
    }

    private void a(UserView userView, long j) {
        CheckBox aV = aV();
        if (userView.t.isChecked()) {
            this.l.add(Long.valueOf(j));
            this.m.b(j);
            if (aV != null) {
                aW();
            }
        } else {
            this.l.remove(Long.valueOf(j));
            this.m.c(j);
            if (aV != null) {
                aV.setChecked(false);
            }
        }
        this.p.s();
        ap().a.invalidate();
    }

    private void g(boolean z) {
        this.l.clear();
        if (this.ab != null) {
            Iterator it = this.ac.iterator();
            while (it.hasNext()) {
                TwitterUser twitterUser = (TwitterUser) it.next();
                if (z) {
                    this.m.b(twitterUser.c);
                    this.l.add(Long.valueOf(twitterUser.c));
                } else {
                    this.m.c(twitterUser.c);
                    this.l.remove(Long.valueOf(twitterUser.c));
                }
            }
            this.ab.notifyDataSetChanged();
        }
        if (ay()) {
            Cursor aA = aA();
            if (aA != null && aA.moveToFirst()) {
                do {
                    long j = aA.getLong(2);
                    if (z) {
                        this.m.b(j);
                        this.l.add(Long.valueOf(j));
                    } else {
                        this.m.c(j);
                        this.l.remove(Long.valueOf(j));
                    }
                } while (aA.moveToNext());
                ((xs) az()).notifyDataSetChanged();
            }
        }
        this.p.s();
    }

    public void a(Session session) {
        a(session, CollectionUtils.e(this.l), this.E);
        this.l.clear();
    }

    protected void H() {
        if (this.t == 32) {
            if (this.J == null && this.K == null) {
                this.z = ContentUris.withAppendedId(dg.y, this.Y);
                this.A = cdk.b;
            } else {
                this.z = ContentUris.withAppendedId(dg.n, this.Y);
                this.A = cdk.a;
            }
            this.B = "LOWER(users_name) ASC";
            return;
        }
        super.H();
    }

    protected void I() {
        int i = 0;
        switch (this.t) {
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                this.C = aX();
                this.D = aY();
            case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                if (this.J == null && this.K == null) {
                    this.C = "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?";
                    this.D = new String[]{Long.toString(this.Y)};
                    return;
                }
                if (this.J != null) {
                    int length = this.J.length;
                    if (this.K != null) {
                        i = this.K.length;
                    }
                    i += length;
                } else {
                    i = this.K.length;
                }
                this.C = g(i);
                this.D = q(i);
            default:
                super.I();
        }
    }

    private String aX() {
        if (this.ac.isEmpty()) {
            return "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?";
        }
        return "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=? AND users_user_id NOT IN (?" + aj.a(", ?", this.ac.size() - 1) + ")";
    }

    private String[] aY() {
        String[] strArr = new String[(this.ac.size() + 1)];
        strArr[0] = Long.toString(this.Y);
        for (int i = 0; i < this.ac.size(); i++) {
            strArr[i + 1] = Long.toString(((TwitterUser) this.ac.get(i)).c);
        }
        return strArr;
    }

    private static String g(int i) {
        String str = "user_groups_tag=?";
        str = "user_groups_tag=? OR ";
        return "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=? AND user_groups_type=? AND (" + aj.a("user_groups_tag=? OR ", i - 1) + "user_groups_tag=?" + ")";
    }

    private String[] q(int i) {
        int i2;
        int i3 = 0;
        String[] strArr = new String[(i + 2)];
        strArr[0] = Long.toString(this.Y);
        strArr[1] = String.valueOf(6);
        if (this.J != null) {
            for (i2 = 0; i2 < this.J.length; i2++) {
                strArr[i2 + 2] = String.valueOf(this.J[i2].hashCode());
            }
        }
        if (this.K != null) {
            if (this.J != null) {
                i2 = this.J.length;
            } else {
                i2 = 0;
            }
            while (i3 < this.K.length) {
                strArr[(i2 + i3) + 2] = String.valueOf(this.K[i3].hashCode());
                i3++;
            }
        }
        return strArr;
    }

    private void a(x xVar) {
        bou bou = (bou) xVar;
        if (((aa) xVar.l().b()).b()) {
            this.ac = new ArrayList(bou.m);
            Iterator it = this.ac.iterator();
            while (it.hasNext()) {
                this.l.add(Long.valueOf(((TwitterUser) it.next()).c));
            }
            this.p.s();
            this.ab.a(new chd(this.ac));
            getLoaderManager().restartLoader(0, null, this);
        }
        aQ();
    }

    protected boolean g_(int i) {
        if (this.t != 32) {
            return super.g_(i);
        }
        if (this.J == null && this.K == null) {
            bou bou = new bou(getActivity(), aT(), 33);
            bou.c = i(i);
            bou.i = c(i == 1);
            bou.j = 40;
            c(bou, 29, i);
            return true;
        }
        c(new i(getActivity(), aT(), this.Y, this.J, this.K, 40), 28, i);
        return true;
    }

    protected void f_(@DrawableRes int i) {
        switch (this.t) {
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                bdl p = p(i);
                p.a(this);
                if (this.F) {
                    this.q = new er(new BaseAdapter[]{p}, 1);
                } else {
                    this.ab = new hb(getActivity(), this, this);
                    this.ab.a(new chd(this.ac));
                    this.q = new er(new BaseAdapter[]{this.ab, p}, 1);
                }
                ap().a(p, this.q);
            default:
                super.f_(i);
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        switch (i) {
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                int d = aaVar.d();
                j(d);
                this.v = true;
                if (d == 200) {
                    a(false);
                }
            case mx.TweetView_tweetViewLayoutId /*29*/:
                j(aaVar.d());
                this.v = true;
                if (aaVar.b()) {
                    a(false);
                }
            default:
        }
    }

    protected String J() {
        switch (this.t) {
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                return i() + ":find_people:stream::results";
            case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                return i() + ":follow_interest_suggestions:stream::results";
            default:
                return super.J();
        }
    }

    private void aZ() {
        x bou = new bou(getActivity(), aT(), 36);
        bou.h = false;
        this.M.a(bou, new h(this));
    }
}
