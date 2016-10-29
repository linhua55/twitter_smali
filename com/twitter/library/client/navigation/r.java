package com.twitter.library.client.navigation;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.support.annotation.MenuRes;
import android.support.design.widget.NavigationView.OnNavigationItemSelectedListener;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.SimpleDrawerListener;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import bcu;
import com.twitter.android.UserAccount;
import com.twitter.app.common.account.d;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.at;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.media.util.HeaderImageVariant;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.util.ae;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import defpackage.bcx;
import defpackage.bus;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class r extends af implements OnNavigationItemSelectedListener, OnClickListener, q {
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final ModernDrawerView i;
    private final DrawerLayout j;
    private final AbstractMap<Integer, v> k;
    private BaseAdapter l;
    private x m;

    public r(ModernDrawerView modernDrawerView, ToolBar toolBar, int i, Activity activity) {
        super(toolBar, i, activity);
        this.k = new HashMap();
        this.e = bus.a().e();
        this.i = modernDrawerView;
        this.j = (DrawerLayout) this.i.getParent();
        this.f = bus.a().f();
        if (this.f) {
            this.i.setOnDrawerItemClickListener(this);
            a(new t(this, null));
            this.g = bus.a().g();
            this.a.setDisplayOptions(232);
        } else {
            this.g = false;
            this.j.setDrawerLockMode(1);
            if (this.e) {
                this.a.setDisplayOptions((this.a.getDisplayOptions() & -3) | 8);
            }
        }
        this.h = bus.a().h();
    }

    public void a(@MenuRes int i) {
        u uVar = new u(this, this.b, i);
        uVar.a();
        this.a.a(uVar.d);
        if (this.l != null) {
            for (Integer num : uVar.f) {
                at d = d(num.intValue());
                this.k.put(num, d != null ? new v(this, d) : null);
            }
        }
        this.i.a(uVar.e);
    }

    public void a(x xVar) {
        super.a(xVar);
        this.m = xVar;
    }

    public void a(BaseAdapter baseAdapter) {
        if (this.l != baseAdapter) {
            this.l = baseAdapter;
        }
    }

    public void a(SimpleDrawerListener simpleDrawerListener) {
        this.j.addDrawerListener(simpleDrawerListener);
    }

    public boolean c() {
        if (this.f) {
            return this.j.isDrawerOpen((int) GravityCompat.START);
        }
        return super.c();
    }

    public boolean d() {
        if (!this.f) {
            return super.d();
        }
        this.j.openDrawer(this.i);
        return true;
    }

    public boolean e() {
        if (!this.f) {
            return super.e();
        }
        this.j.closeDrawer(this.i);
        return true;
    }

    public void onClick(View view) {
        ac b = b(view.getId());
        if (b != null) {
            a(b);
        }
    }

    public void a(b bVar) {
        a((ac) bVar);
    }

    public void a(UserAccount userAccount) {
        if (this.b instanceof a) {
            e();
            ae.a(this.b.getApplicationContext()).a();
            ((a) this.b).d(userAccount.a.name);
        }
    }

    public void a() {
        if (!this.h) {
            e();
        }
        if (this.m != null) {
            this.m.a(new b(this.b, bcx.accounts, 0, 0));
        }
    }

    public void b() {
        a(new b(this.b, bcx.my_profile, 0, 0));
    }

    public boolean onNavigationItemSelected(MenuItem menuItem) {
        return a(b(menuItem.getItemId()));
    }

    private boolean a(ac acVar) {
        e();
        return this.m != null && this.m.a(acVar);
    }

    public void a(TwitterUser twitterUser, UserSettings userSettings) {
        if (!(twitterUser == null || ObjectUtils.a((Object) twitterUser, this.d))) {
            if (this.e) {
                for (Entry entry : this.k.entrySet()) {
                    int intValue = ((Integer) entry.getKey()).intValue();
                    v vVar = (v) entry.getValue();
                    at d = d(intValue);
                    if ((d == null && vVar != null) || (vVar == null && d != null)) {
                        this.k.put(Integer.valueOf(intValue), d != null ? new v(this, d) : null);
                    }
                }
            }
            if (this.f) {
                View headerView = this.i.getHeaderView();
                if (headerView != null) {
                    ((UserImageView) headerView.findViewById(bcx.my_profile)).a(twitterUser);
                    if (this.g) {
                        if (d.a().b() == 1 && twitterUser.g()) {
                            this.a.setDrawerIcon(null);
                        } else {
                            a(twitterUser);
                        }
                    }
                    BackgroundImageView backgroundImageView = (BackgroundImageView) headerView.findViewById(bcx.banner_image);
                    backgroundImageView.setDefaultDrawable(new ColorDrawable(twitterUser.j != 0 ? twitterUser.j : ContextCompat.getColor(this.b, bcu.twitter_blue)));
                    backgroundImageView.a(a.a(twitterUser.G).a(HeaderImageVariant.j));
                    this.b.runOnUiThread(new s(this, headerView, twitterUser, userSettings));
                }
            }
        }
        super.a(twitterUser, userSettings);
    }

    void a(TwitterUser twitterUser) {
        if (this.g) {
            this.c = l.a(this.b).a((b) UserImageRequest.a(twitterUser.e, -1).a((i) this));
        } else {
            super.a(twitterUser);
        }
    }

    public void a(ImageResponse imageResponse) {
        if (this.g) {
            this.a.setDrawerIcon((Bitmap) imageResponse.f());
        } else {
            super.a(imageResponse);
        }
    }

    public ac b(int i) {
        b a = this.i.a(i);
        if (a != null) {
            return a;
        }
        v vVar = (v) this.k.get(Integer.valueOf(i));
        return vVar == null ? super.b(i) : vVar;
    }

    private at d(int i) {
        if (this.l != null) {
            int count = this.l.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                Object item = this.l.getItem(i2);
                if ((item instanceof at) && ((at) item).c() == i) {
                    return (at) item;
                }
            }
        }
        return null;
    }
}
