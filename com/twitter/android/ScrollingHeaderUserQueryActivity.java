package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.android.profiles.as;
import com.twitter.android.profiles.au;
import com.twitter.app.common.base.t;
import com.twitter.internal.network.k;
import com.twitter.library.media.util.af;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.p;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.m;
import defpackage.boo;
import defpackage.bos;
import defpackage.bpo;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ScrollingHeaderUserQueryActivity extends ScrollingHeaderActivity implements xn {
    protected long A;
    protected String B;
    protected boolean C;
    protected TwitterUser D;
    protected au E;
    private boolean a;
    private xm b;
    private boolean c;
    private boolean d;

    public ScrollingHeaderUserQueryActivity() {
        this.E = new au();
    }

    protected boolean b(TwitterUser twitterUser) {
        boolean z = true;
        if (twitterUser == null || this.c) {
            return false;
        }
        long b = m.b();
        if (this.C) {
            if (twitterUser.C + 300000 >= b) {
                z = false;
            }
            return z;
        } else if (twitterUser.z + 300000 < b || (twitterUser.m && p.j(twitterUser.S))) {
            return true;
        } else {
            return false;
        }
    }

    protected boolean a(ExtendedProfile extendedProfile) {
        if (extendedProfile == null || this.d) {
            return false;
        }
        if (extendedProfile.h + 300000 < m.b()) {
            return true;
        }
        return false;
    }

    protected void a(TwitterUser twitterUser) {
        this.D = twitterUser;
        this.A = twitterUser.c;
        this.B = twitterUser.k;
        f();
    }

    public void b(Bundle bundle, t tVar) {
        long j = 0;
        if (bundle != null) {
            this.A = bundle.getLong("user_id");
            this.B = bundle.getString(UsernameError.USERNAME_ERROR_FIELD);
        } else {
            Intent intent = getIntent();
            this.A = intent.getLongExtra("user_id", j);
            this.B = intent.getStringExtra("screen_name");
            Uri data = intent.getData();
            if (data != null && "twitter".equals(data.getScheme())) {
                String queryParameter = data.getQueryParameter("user_id");
                if (queryParameter != null) {
                    try {
                        j = Long.parseLong(queryParameter);
                    } catch (NumberFormatException e) {
                    }
                }
                String queryParameter2 = data.getQueryParameter("screen_name");
                this.A = j;
                this.B = queryParameter2;
            }
        }
        this.E.a(bundle);
        f();
        super.b(bundle, tVar);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("user_id", this.A);
        bundle.putString(UsernameError.USERNAME_ERROR_FIELD, this.B);
        this.E.b(bundle);
    }

    protected void A() {
        if (this.b == null) {
            this.b = new xm(this, getSupportLoaderManager(), this, 1);
            this.b.a(this.A, this.B, ab().g());
            return;
        }
        this.b.b(this.A, this.B, ab().g());
    }

    public void c(TwitterUser twitterUser) {
        if (!this.a && !isFinishing()) {
            if (twitterUser != null) {
                af a = af.a();
                MediaFile a2 = a.a(twitterUser.c);
                if (a2 != null && a2.a().toString().equals(twitterUser.e)) {
                    a.b(twitterUser.c);
                }
            }
            if (twitterUser != null && twitterUser.e()) {
                a(twitterUser);
            }
            boolean z = this.A != 0 || aj.b(this.B);
            if (z && d(twitterUser)) {
                B();
            } else if (twitterUser != null) {
                if (e(twitterUser)) {
                    x bos = new bos((Context) this, ab());
                    bos.a = twitterUser;
                    b(bos, 200);
                    this.d = true;
                }
                this.E.a();
            }
        }
    }

    private boolean d(TwitterUser twitterUser) {
        return b(twitterUser) || twitterUser == null || !twitterUser.e() || twitterUser.D == null || twitterUser.E == null || twitterUser.r == null;
    }

    private boolean e(TwitterUser twitterUser) {
        return (twitterUser == null || this.d || ((twitterUser.s && !boo.f()) || (twitterUser.t != null && !a(twitterUser.t)))) ? false : true;
    }

    protected void B() {
        this.a = true;
        b(new bpo((Context) this, ab(), this.A, this.B), 1);
        this.c = true;
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                int i2;
                bpo bpo = (bpo) xVar;
                k g = ((aa) xVar.l().b()).g();
                switch (g != null ? g.a : -1) {
                    case 200:
                        if (bpo.a != null && (bpo.a.c == this.A || bpo.a.k.equalsIgnoreCase(this.B))) {
                            a(bpo.a);
                            this.E.a();
                            i2 = 0;
                            break;
                        }
                        i2 = 2131364070;
                        break;
                    case 403:
                        if (!CollectionUtils.a(cd.a(bpo.b), 63)) {
                            i2 = 2131364070;
                            break;
                        } else {
                            i2 = 2131363922;
                            break;
                        }
                    case 404:
                        i2 = 2131364071;
                        break;
                    default:
                        i2 = 2131364070;
                        break;
                }
                if (i2 > 0) {
                    Toast.makeText(this, i2, 1).show();
                    if (this.D == null) {
                        finish();
                    }
                }
                this.a = false;
            default:
        }
    }

    private void f() {
        this.C = as.a(this.A, this.B, aa().c());
    }
}
