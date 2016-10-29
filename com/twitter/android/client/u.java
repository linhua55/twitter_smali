package com.twitter.android.client;

import android.content.Context;
import android.support.v4.app.FragmentManager;
import com.twitter.android.HomeTimelineFragment;
import com.twitter.android.highlights.g;
import com.twitter.android.mx;
import com.twitter.android.news.n;
import com.twitter.android.util.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.main.MainActivity;
import com.twitter.config.d;
import com.twitter.library.client.l;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.Tooltip;
import com.twitter.util.collection.MutableMap;
import defpackage.bcx;
import defpackage.biw;
import defpackage.cbj;
import defpackage.cbx;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class u {
    private final TwitterUser a;
    private final Context b;
    private final FragmentManager c;
    private boolean d;
    private final Map<String, t> e;

    public u(Context context, TwitterUser twitterUser, FragmentManager fragmentManager) {
        this.e = MutableMap.a();
        this.b = context;
        this.a = twitterUser;
        this.c = fragmentManager;
    }

    public void a() {
        this.d = false;
    }

    public void a(String str) {
        if (!this.d && !this.c.isDestroyed() && b(str)) {
            this.d = true;
            boolean z = true;
            switch (str.hashCode()) {
                case -66410818:
                    if (str.equals("highlights_tooltip_overflow")) {
                        z = false;
                        break;
                    }
                    break;
                case 306054003:
                    if (str.equals("connect_tooltip_overflow")) {
                        z = true;
                        break;
                    }
                    break;
                case 669345198:
                    if (str.equals("connect_tooltip")) {
                        z = true;
                        break;
                    }
                    break;
                case 1507117520:
                    if (str.equals("connect_tooltip_drawe")) {
                        z = true;
                        break;
                    }
                    break;
                case 1879103437:
                    if (str.equals("news_tooltip_in")) {
                        z = true;
                        break;
                    }
                    break;
                case 2114748055:
                    if (str.equals("news_tooltip")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case mx.View_android_theme /*0*/:
                    Tooltip.a(this.b, bcx.overflow).b(2131558917).a(2131362783).c(1).a(this.c, "highlights_tooltip_overflow");
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    Tooltip.a(this.b, 2131953230).b(2131558917).a(2131363151).c(1).a(this.c, "news_tooltip");
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    Tooltip.a(this.b, 2131953230).b(2131558917).a(2131363152).c(1).a(this.c, "news_tooltip_in");
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    Tooltip.a(this.b, 2131953440).b(2131558917).a(2131363242).c(1).a(this.c, "connect_tooltip");
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    Tooltip.a(this.b, bcx.overflow).b(2131558917).a(2131363242).c(1).a(this.c, "connect_tooltip_overflow");
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    Tooltip.a(this.b, bcx.drawer_icon).b(2131558917).a(2131363242).c(1).a(this.c, "connect_tooltip_drawe");
                    break;
            }
            t c = c(str);
            if (c != null) {
                c.b();
            }
        }
    }

    private void b() {
        Tooltip.a(this.b, 2131953441).b(2131558917).a(2131362532).c(1).a(this.c, "dm_tooltip");
    }

    boolean b(String str) {
        int i = -1;
        switch (str.hashCode()) {
            case -697374131:
                if (str.equals("dm_tooltip")) {
                    i = 3;
                    break;
                }
                break;
            case -66410818:
                if (str.equals("highlights_tooltip_overflow")) {
                    i = 0;
                    break;
                }
                break;
            case 306054003:
                if (str.equals("connect_tooltip_overflow")) {
                    i = 5;
                    break;
                }
                break;
            case 669345198:
                if (str.equals("connect_tooltip")) {
                    i = 4;
                    break;
                }
                break;
            case 1507117520:
                if (str.equals("connect_tooltip_drawe")) {
                    i = 6;
                    break;
                }
                break;
            case 1879103437:
                if (str.equals("news_tooltip_in")) {
                    boolean z = true;
                    break;
                }
                break;
            case 2114748055:
                if (str.equals("news_tooltip")) {
                    i = 2;
                    break;
                }
                break;
        }
        t c;
        switch (i) {
            case mx.View_android_theme /*0*/:
                c = c(str);
                i = (c == null || c.a()) ? true : 0;
                l lVar = new l(this.b, this.a.k);
                if (i == 0 || !g.a(lVar)) {
                    return false;
                }
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                c = c(str);
                if (c == null || c.a()) {
                    i = true;
                } else {
                    i = 0;
                }
                if (i != 0 && n.b(this.a.c) && cbj.g(this.a.c)) {
                    return true;
                }
                return false;
            case WireMessage.WIRE_AUTH /*3*/:
                if (d.a("dm_share_tweet_new_user_tooltip_enabled")) {
                    c = c(str);
                    if (biw.d(this.b) && c != null && c.a()) {
                        c.b();
                        TwitterListFragment e = ((MainActivity) this.b).e();
                        if (e instanceof HomeTimelineFragment) {
                            new v(this, (HomeTimelineFragment) e).execute(new Void[0]);
                        }
                    }
                }
                return false;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                c = c(str);
                if (c == null || c.a()) {
                    i = true;
                } else {
                    i = 0;
                }
                if (i == 0 || !cbx.a()) {
                    return false;
                }
                return true;
            default:
                throw new IllegalArgumentException("Invalid tooltip name");
        }
    }

    t c(String str) {
        t tVar = (t) this.e.get(str);
        if (tVar == null) {
            return d(str);
        }
        return tVar;
    }

    private t d(String str) {
        t tVar;
        int i = -1;
        switch (str.hashCode()) {
            case -697374131:
                if (str.equals("dm_tooltip")) {
                    i = 3;
                    break;
                }
                break;
            case -66410818:
                if (str.equals("highlights_tooltip_overflow")) {
                    i = 0;
                    break;
                }
                break;
            case 306054003:
                if (str.equals("connect_tooltip_overflow")) {
                    i = 5;
                    break;
                }
                break;
            case 669345198:
                if (str.equals("connect_tooltip")) {
                    i = 4;
                    break;
                }
                break;
            case 1507117520:
                if (str.equals("connect_tooltip_drawe")) {
                    i = 6;
                    break;
                }
                break;
            case 1879103437:
                if (str.equals("news_tooltip_in")) {
                    i = 2;
                    break;
                }
                break;
            case 2114748055:
                if (str.equals("news_tooltip")) {
                    i = 1;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                tVar = new t(this.b, "highlights_overflow_fatigue", 1, 0, this.a.k);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                tVar = new t(this.b, "news_fatigue", 1, 0, this.a.k);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                tVar = new t(this.b, "news_fatigue_in", 4, 345600000, this.a.k);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                tVar = new t(this.b, "dm_fatigue", 1, 0, this.a.k);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                tVar = new t(this.b, "connect_fatigue", 1, 0, this.a.k);
                break;
            default:
                tVar = null;
                break;
        }
        if (tVar != null) {
            this.e.put(str, tVar);
        }
        return tVar;
    }
}
