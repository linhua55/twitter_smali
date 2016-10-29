package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.Toast;
import bdj;
import bmz;
import bna;
import bnb;
import bnq;
import boh;
import boj;
import bok;
import bos;
import bpo;
import cni;
import com.twitter.android.DialogActivity;
import com.twitter.android.dialog.FollowingExceededDialogFragmentActivity;
import com.twitter.android.dialog.RateLimitDialogFragmentActivity;
import com.twitter.library.api.ClientConfiguration;
import com.twitter.library.api.al;
import com.twitter.library.api.timeline.s;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.b;
import com.twitter.model.client.UrlConfiguration;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bdw;
import defpackage.bnd;
import defpackage.bno;

/* compiled from: Twttr */
public class h extends z {
    private final Context a;
    private final bg b;

    protected h(Context context) {
        this.a = context;
        this.b = bg.a();
    }

    public void b(x xVar) {
        Session a = this.b.a(xVar);
        if (xVar instanceof bmz) {
            bmz bmz = (bmz) xVar;
            if (bmz.M() == 3) {
                t.a(bmz.N().a).b(bmz.b, 4);
            } else if (bmz.M() == 1 || bmz.g) {
                t.a(bmz.N().a).a(bmz.b, 4);
            }
        } else if (xVar instanceof boh) {
            if (a != null) {
                t.a(a).a(((boh) xVar).t(), 1);
            }
        } else if (xVar instanceof bok) {
            if (a != null) {
                t.a(a).b(((bok) xVar).g(), 1);
            }
        } else if ((xVar instanceof boj) && a != null) {
            r a2 = t.a(a);
            for (long a3 : ((boj) xVar).a()) {
                a2.a(a3, 1);
            }
        }
    }

    public void a(x xVar) {
        int i = 0;
        bg a = bg.a();
        ab N = xVar.N();
        if (N != null) {
            Session c = a.c(N.a);
            if (c != null) {
                boolean z;
                aa aaVar = (aa) xVar.l().b();
                if (aaVar.b() || !an.a(aaVar)) {
                    z = false;
                } else {
                    bz.a(this.a).a(c, aaVar);
                    z = true;
                }
                if (xVar instanceof s) {
                    a((s) xVar, c);
                } else if (xVar instanceof bna) {
                    if (aaVar.b()) {
                        a(2131363129, aaVar.c.getString("muted_username"));
                    } else if (!z) {
                        a(2131363126);
                    }
                } else if (xVar instanceof bnb) {
                    if (aaVar.b()) {
                        a(2131364055, aaVar.c.getString("muted_username"));
                    } else if (!z) {
                        a(2131364054);
                    }
                } else if (xVar instanceof bmz) {
                    bmz bmz = (bmz) xVar;
                    if (bmz.M() == 3) {
                        if (aaVar.b()) {
                            a(2131364048, bmz.i.d());
                        } else if (!z) {
                            a(2131364130);
                            t.a(bmz.N().a).a(bmz.b, 4);
                        }
                    } else if (bmz.M() == 1) {
                        if (aaVar.b()) {
                            a(2131361966, bmz.h.d());
                        } else if (!z) {
                            a(2131364082);
                            t.a(bmz.N().a).b(bmz.b, 4);
                        }
                    } else if (bmz.M() == 2) {
                        boolean z2 = bmz.g;
                        String str = bmz.j;
                        if (aaVar.b()) {
                            if (!"abuse".equals(str) && z2) {
                                a(2131361966, bmz.h.d());
                            }
                        } else if (!z) {
                            a(2131364120);
                        }
                    }
                } else if (xVar instanceof boh) {
                    boh boh = (boh) xVar;
                    Context context = this.a;
                    if (!aaVar.b()) {
                        t.a(c).b(boh.t(), 1);
                        if (!xVar.isCancelled() && !z) {
                            a(boh, context, c);
                        }
                    } else if (boh.s() != null && boh.w()) {
                        a(2131364090, boh.s().c());
                    }
                } else if (xVar instanceof bpo) {
                    if (aaVar.b()) {
                        r0 = ((bpo) xVar).a;
                        if (r0 != null && r0.bf_() == c.g()) {
                            c.a(r0);
                            b.a(r0);
                        }
                    }
                } else if (xVar instanceof bok) {
                    if (!aaVar.b()) {
                        t.a(c).a(((bok) xVar).g(), 1);
                    }
                } else if (xVar instanceof bos) {
                    if (aaVar.b()) {
                        ExtendedProfile extendedProfile = ((bos) xVar).b;
                        TwitterUser f = c.f();
                        if (extendedProfile != null && f != null && extendedProfile.b == f.c) {
                            r0 = (TwitterUser) new cp(f).a(extendedProfile).q();
                            c.a(r0);
                            b.a(r0);
                        }
                    }
                } else if (xVar instanceof bnq) {
                    if (aaVar.b()) {
                        cd.a(this.a).a(c, true);
                    } else if (aaVar.d() == 403 && !z) {
                        bz.a(this.a).a(((bnq) xVar).g());
                    }
                } else if (xVar instanceof bno) {
                    long e = ((bno) xVar).e();
                    if (aaVar.b()) {
                        WidgetControl a2 = cd.a(this.a).a(c.g());
                        if (a2 != null) {
                            a2.a(e);
                        }
                    }
                } else if (xVar instanceof bnd) {
                    if (!aaVar.b() && !z) {
                        Toast.makeText(this.a, 2131364011, 0).show();
                    }
                } else if (xVar instanceof boj) {
                    if (!aaVar.b()) {
                        r a3 = t.a(c);
                        long[] a4 = ((boj) xVar).a();
                        int length = a4.length;
                        while (i < length) {
                            a3.b(a4[i], 1);
                            i++;
                        }
                    }
                } else if ((xVar instanceof bdw) && aaVar.b()) {
                    al alVar;
                    ClientConfiguration clientConfiguration = (ClientConfiguration) aaVar.c.getParcelable("extra_settings");
                    UrlConfiguration urlConfiguration = clientConfiguration != null ? clientConfiguration.a : null;
                    if (urlConfiguration != null) {
                        by.a(this.a).a(urlConfiguration);
                    }
                    if (clientConfiguration != null) {
                        alVar = clientConfiguration.b;
                    } else {
                        alVar = null;
                    }
                    bdj.a(this.a).a(alVar);
                }
            }
        }
    }

    private void a(boh boh, Context context, Session session) {
        int d = ((aa) boh.l().b()).d();
        int[] g = boh.g();
        if (d != 403) {
            a(2131364088);
        } else if (CollectionUtils.a(g, 226)) {
            context.startActivity(new Intent(context, DialogActivity.class).setAction("blocked_spammer_follow").setFlags(268435456));
        } else if (CollectionUtils.a(g, 225)) {
            context.startActivity(new Intent(context, DialogActivity.class).setAction("blocked_automated_spammer").setFlags(268435456));
        } else if (CollectionUtils.a(g, 162)) {
            a(2131364089);
        } else if (CollectionUtils.a(g, 344)) {
            RateLimitDialogFragmentActivity.a(context);
        } else if (CollectionUtils.a(g, 161)) {
            FollowingExceededDialogFragmentActivity.a(context);
        } else if (CollectionUtils.a(g, 160)) {
            a(2131364087);
        } else if (!CollectionUtils.a(g, Callback.DEFAULT_SWIPE_ANIMATION_DURATION)) {
            a(2131364088);
            bz.a(this.a).a(g);
        } else if (bz.a(this.a).b()) {
            a(2131361883);
        } else if (session.d()) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", boh.t());
            cni u = boh.u();
            if (u != null) {
                bundle.putString("impression_id", u.c);
                bundle.putBoolean("earned", u.c());
            }
            bundle.putLong("age_before_timestamp", boh.h());
            z.a(context).a(bundle, session);
        }
    }

    private void a(s sVar, Session session) {
        if (((aa) sVar.l().b()).b() && sVar.E() == 0 && sVar.H() > 0) {
            cd.a(this.a).a(session, false);
        }
    }

    private void a(int i, Object... objArr) {
        Toast.makeText(this.a, this.a.getString(i, objArr), 1).show();
    }

    private void a(int i) {
        Toast.makeText(this.a, i, 1).show();
    }
}
