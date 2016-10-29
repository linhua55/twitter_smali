package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.Loader;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.twitter.android.client.w;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.library.api.search.d;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.ccu;
import defpackage.cgu;
import java.util.List;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SearchPhotosFragment extends SearchFragment<ma, ly> {
    private String a;
    private boolean ab;
    private final List<TwitterScribeItem> ac;
    private final Set<Long> ad;

    public SearchPhotosFragment() {
        this.ac = MutableList.a();
        this.ad = MutableSet.a();
    }

    protected void ac_() {
        super.ac_();
        if (!ao()) {
            return;
        }
        if (((ly) az()).isEmpty() || w()) {
            a(3);
            this.ab = true;
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a = t().f("scribe_context");
        bdl S_ = S_();
        a((w) S_);
        ap().a(S_);
    }

    protected ly S_() {
        Context activity = getActivity();
        return new ly(activity, (float) getResources().getInteger(2131755010), ccu.d, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, b(activity), new oy(this, null), false);
    }

    private OnClickListener b(Context context) {
        return new ox(this, context);
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(db.a, aT().g()), ccu.a, r(), new String[]{String.valueOf(this.s)}, "type_id ASC, _id ASC");
    }

    protected String r() {
        return "statuses_flags&1537 !=0 AND search_id=?";
    }

    protected boolean y() {
        return true;
    }

    protected void a(Context context) {
        x a = new d(context, aT(), this.s, this.u, P_(), this.v, this.t, 1, this.A, false).a(q(), this.d, this.e, this.f);
        if (aj.b(this.D)) {
            a.a(this.D, null);
        }
        a.k("Not triggered by a user action.");
        a((d) a);
        if (this.c) {
            a.a(this.G.a());
        }
        c(a, 1, 2);
    }

    protected void a(cgu<ma> cgu_com_twitter_android_ma) {
        int i = this.l;
        if (this.ab) {
            if (i == 3) {
                a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).a(this.Y)).b(this.B)).c("photo_grid"));
            }
            u();
        }
        super.a((cgu) cgu_com_twitter_android_ma);
        if (!this.ab) {
            if (((ly) az()).isEmpty()) {
                a(3);
            }
            this.ab = true;
        } else if (i == 2) {
            this.l = 3;
        }
    }

    protected boolean a(int i) {
        if (!a_(i)) {
            return false;
        }
        int i2;
        this.l = i;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                i2 = 2;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i2 = 1;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i2 = 0;
                break;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).b(TwitterListFragment.a(this.B, "photo_grid", i))).a(this.u, SearchFragment.c(3), this.d, this.c);
        x a = new d(getActivity(), aT(), this.s, this.u, P_(), this.v, this.t, i2, this.A, false).a(q(), this.d, this.e, this.f);
        a((d) a);
        if (aj.b(this.D)) {
            a.a(this.D, null);
        }
        a.a("scribe_log", (Parcelable) twitterScribeLog);
        if (this.c) {
            a.a(this.G.a());
        }
        c(a, 2, i);
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 2) {
            d dVar = (d) xVar;
            aa aaVar = (aa) dVar.l().b();
            if (aaVar == null || !aaVar.b()) {
                Toast.makeText(this.T, 2131363580, 1).show();
            } else if (dVar.h() == 0) {
                if (i2 == 3) {
                    TwitterScribeLog twitterScribeLog = new TwitterScribeLog(aT().g());
                    String[] strArr = new String[1];
                    strArr[0] = ScribeLog.a(this.B + ":photo_grid:stream::no_results");
                    bbu.a(((TwitterScribeLog) twitterScribeLog.b(strArr)).a(this.u, SearchFragment.c(3), this.d, this.c));
                } else if (i2 == 1) {
                    this.h = true;
                }
            } else if (this.j && i2 == 3) {
                v();
            }
        }
    }

    protected int b(long j) {
        if (ay()) {
            return ((ly) az()).a(j);
        }
        return 0;
    }

    protected void a(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).i(this.a)).b(str)).a(this.u, SearchFragment.c(3), this.d, this.c)).a(aD()));
    }

    protected void O_() {
        a(this.B + ":photo_grid:::impression");
    }

    protected void R() {
        if (!this.ac.isEmpty()) {
            String str = this.B + ":photo_grid:stream::results";
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(str)).b(this.ac)).a(this.u, SearchFragment.c(3), this.d, this.c));
            this.ac.clear();
        }
    }

    public int q() {
        return 3;
    }

    protected String P() {
        return "photo_grid";
    }

    protected String T() {
        return this.a;
    }
}
