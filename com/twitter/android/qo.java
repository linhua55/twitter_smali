package com.twitter.android;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import cgu;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.profiles.as;
import com.twitter.android.smartfollow.ac;
import com.twitter.android.widget.SmartFollowHeaderView;
import com.twitter.android.widget.dl;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.collection.r;
import com.twitter.util.collection.z;
import defpackage.bcv;
import defpackage.che;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class qo extends bdl<qn> implements dl {
    private static final Map<String, Integer> b;
    protected Map<String, z<Integer, Integer>> a;
    private final qs c;
    private final Set<Long> d;
    private final LayoutInflater e;
    private View f;

    static {
        b = (Map) r.d().b("PYMK", Integer.valueOf(2131363813)).b("LOCATION_GEO", Integer.valueOf(2131363812)).b("TWITTER_HISTORY", Integer.valueOf(2131363816)).q();
    }

    public qo(Context context, qs qsVar, Set<Long> set) {
        super(context);
        this.a = new LinkedHashMap();
        this.c = qsVar;
        this.d = set;
        this.e = LayoutInflater.from(new ContextThemeWrapper(context, 2131559121));
    }

    protected View a(Context context, qn qnVar, ViewGroup viewGroup) {
        View inflate;
        switch (qnVar.c) {
            case Util.TYPE_DASH /*0*/:
                inflate = this.e.inflate(2130968673, viewGroup, false);
                UserView userView = (UserView) inflate;
                xp xpVar = new xp(userView);
                xpVar.a(qnVar.a);
                userView.setTag(new qv().a(xpVar).a());
                userView.setOnClickListener(new qp(this));
                userView.setCheckBoxClickListener(new qq(this));
                return inflate;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a(2130969406, viewGroup);
            default:
                inflate = LayoutInflater.from(context).inflate(2130969405, viewGroup, false);
                inflate.setTag(qu.a);
                return inflate;
        }
    }

    protected void a(View view, Context context, qn qnVar) {
        qu quVar = (qu) view.getTag();
        switch (qnVar.c) {
            case Util.TYPE_DASH /*0*/:
                UserSocialView userSocialView = (UserSocialView) view;
                TwitterUser twitterUser = qnVar.a;
                quVar.d = qnVar.b;
                userSocialView.setUser(twitterUser);
                userSocialView.setContentSize(context.getResources().getDimension(bcv.font_size_small));
                if (ac.a(twitterUser.R)) {
                    userSocialView.a(as.a(twitterUser.g), twitterUser.D);
                }
                xp xpVar = quVar.b;
                if (xpVar != null) {
                    xpVar.a(twitterUser);
                }
                userSocialView.t.setChecked(this.d.contains(Long.valueOf(twitterUser.c)));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(qnVar.b, view);
            default:
                quVar.d = qnVar.b;
        }
    }

    public cgu<qn> a(cgu<qn> cgu_com_twitter_android_qn) {
        cgu<qn> a = super.a(cgu_com_twitter_android_qn);
        b((cgu) cgu_com_twitter_android_qn);
        return a;
    }

    public void a(View view) {
        this.f = view;
    }

    void a(String str, View view) {
        qu quVar = (qu) view.getTag();
        if (b.containsKey(str)) {
            CharSequence string = i().getString(((Integer) b.get(str)).intValue());
        } else {
            Object obj = str;
        }
        quVar.d = str;
        qt qtVar = quVar.c;
        if (qtVar != null) {
            qtVar.b.setText(string);
            qtVar.c.setChecked(a(str));
        }
    }

    public View a(int i, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(i()).inflate(i, viewGroup, false);
        inflate.setTag(new qv().a(new qt(inflate)).a());
        if (inflate instanceof SmartFollowHeaderView) {
            ((SmartFollowHeaderView) inflate).setOnCheckChangedListener(new qr(this));
        }
        return inflate;
    }

    public int getViewTypeCount() {
        return 3;
    }

    protected int a(qn qnVar) {
        return qnVar.c;
    }

    public long getItemId(int i) {
        TwitterUser twitterUser = ((qn) getItem(i)).a;
        return twitterUser != null ? twitterUser.c : 0;
    }

    public boolean a(String str) {
        Iterator it = b(str).iterator();
        while (it.hasNext()) {
            qn qnVar = (qn) it.next();
            if (qnVar.a != null && !this.d.contains(Long.valueOf(qnVar.a.bf_()))) {
                return false;
            }
        }
        return true;
    }

    public void a(String str, boolean z) {
        Iterator it = b(str).iterator();
        while (it.hasNext()) {
            qn qnVar = (qn) it.next();
            if (qnVar.a != null) {
                a(qnVar.a.bf_(), z);
            }
        }
        notifyDataSetChanged();
        this.c.a();
        this.c.a(str, z);
    }

    private void a(UserView userView, long j) {
        a(j, userView.t.isChecked());
        String str = ((qu) userView.getTag()).d;
        if (this.f != null && aj.a(str, ((qu) this.f.getTag()).d)) {
            a(str, this.f);
        }
        notifyDataSetChanged();
        this.c.a();
    }

    private void a(long j, boolean z) {
        if (z) {
            this.d.add(Long.valueOf(j));
        } else {
            this.d.remove(Long.valueOf(j));
        }
    }

    @VisibleForTesting
    protected cgu<qn> b(String str) {
        che che = new che();
        z zVar = (z) this.a.get(str);
        if (zVar != null) {
            for (int intValue = ((Integer) zVar.a()).intValue(); intValue <= ((Integer) zVar.b()).intValue(); intValue++) {
                che.a(getItem(intValue));
            }
        }
        return che.a();
    }

    public int a_(int i, int i2) {
        int i3 = i - i2;
        if (i3 >= 0) {
            qn qnVar = (qn) getItem(i3);
            if (qnVar.c == 1) {
                return 1;
            }
            if (qnVar.c == 0) {
                return b(qnVar) ? 2 : 1;
            }
        }
        return 0;
    }

    public void a(View view, int i, int i2, int i3) {
        a(((qn) getItem(i - i2)).b, view);
    }

    @VisibleForTesting
    protected boolean b(qn qnVar) {
        cgu b = b(qnVar.b);
        int aU_ = b.aU_() - 1;
        return aU_ >= 0 && qnVar.equals(b.a(aU_));
    }

    @VisibleForTesting
    protected void b(cgu<qn> cgu_com_twitter_android_qn) {
        Map linkedHashMap = new LinkedHashMap();
        if (cgu_com_twitter_android_qn != null) {
            for (int i = 0; i < cgu_com_twitter_android_qn.aU_(); i++) {
                qn qnVar = (qn) cgu_com_twitter_android_qn.a(i);
                if (qnVar != null) {
                    Object valueOf;
                    Object valueOf2;
                    if (linkedHashMap.containsKey(qnVar.b)) {
                        z zVar = (z) linkedHashMap.get(qnVar.b);
                        valueOf = Integer.valueOf(Math.min(i, ((Integer) zVar.a()).intValue()));
                        valueOf2 = Integer.valueOf(Math.max(i, ((Integer) zVar.b()).intValue()));
                    } else {
                        valueOf2 = Integer.valueOf(i);
                        valueOf = valueOf2;
                    }
                    linkedHashMap.put(qnVar.b, z.a(valueOf, valueOf2));
                }
            }
        }
        this.a = linkedHashMap;
    }
}
