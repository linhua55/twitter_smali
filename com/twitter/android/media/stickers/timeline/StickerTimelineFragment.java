package com.twitter.android.media.stickers.timeline;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ListView;
import aos;
import cen;
import cep;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.TweetListFragment;
import com.twitter.android.timeline.aw;
import com.twitter.android.vr;
import com.twitter.android.vt;
import com.twitter.android.vu;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.library.api.search.d;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.widget.TweetView;
import com.twitter.util.aj;
import defpackage.aov;
import defpackage.cgu;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class StickerTimelineFragment extends TweetListFragment<aw, vu> implements aov<Cursor> {
    private long a;
    private String b;
    private long c;
    private TwitterScribeAssociation d;
    private boolean e;
    private boolean f;
    private boolean g;

    public /* synthetic */ h C() {
        return m();
    }

    public /* synthetic */ g o() {
        return m();
    }

    public f m() {
        return f.a(getArguments());
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.a(2131363567).b(2131363568);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("is_last", this.e);
        bundle.putLong("search_id", this.c);
    }

    protected String i() {
        return "sticker_timeline";
    }

    public String n() {
        return "tweets";
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        TwitterFragmentActivity aI = aI();
        if (aI instanceof StickerTimelineActivity) {
            ((StickerTimelineActivity) aI).a(this);
        }
        View findViewById = view.findViewById(2131951652);
        if (findViewById != null) {
            findViewById.setOnClickListener(new e(this));
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f m = m();
        this.a = m.c();
        this.b = m.b();
        this.f = m.g();
        if (bundle != null) {
            this.e = bundle.getBoolean("is_last");
            this.c = bundle.getLong("search_id");
        } else {
            this.c = m.d();
        }
        this.d = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.Z.c().g())).b(i())).c(n());
    }

    protected void a(ListView listView, View view, int i, long j) {
        if (i >= ap().a.getHeaderViewsCount()) {
            TweetView tweetView = ((vt) view.getTag()).d;
            startActivity(new Intent(getActivity(), TweetActivity.class).putExtra("tw", tweetView.getTweet()).putExtra("reason", tweetView.getReason()).putExtra("reason_icon_id", tweetView.getReasonIconResId()).putExtra("association", aD()));
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        TwitterFragmentActivity aI = aI();
        if (aI != null) {
            ap().a(new vu(aI, true, new vr(this, this.d, null, t()), null, this.d));
        }
    }

    public boolean r() {
        return this.g;
    }

    public void a(String str) {
        this.g = true;
        this.b = str;
        if (getActivity() != null && isAdded()) {
            new aos(getLoaderManager(), 0, new h(getActivity(), aT().g(), this.c)).a(this);
        }
    }

    protected void c() {
    }

    protected boolean p() {
        return true;
    }

    public void a(Cursor cursor) {
        super.a((cgu) ((vu) az()).b(cursor));
        if (cursor != null && cursor.getCount() == 0) {
            a(3);
        }
    }

    public void g() {
        a(2);
    }

    protected void h() {
        if (ar() && !this.e && ((vu) az()).getCount() < 400) {
            a(1);
        }
    }

    protected boolean a(int i) {
        if (!a_(i) || aj.a(this.b)) {
            return false;
        }
        int i2;
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).b(TwitterListFragment.a(i(), n(), i))).a(this.b, "everything", false, false);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                i2 = 2;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i2 = 1;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i2 = 0;
                break;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
        d dVar = (d) new d(getActivity(), aT(), this.c, this.b, 0, "stickers", this.b, i2, null, false).a(14, false, this.f, false).a("scribe_log", (Parcelable) twitterScribeLog);
        if (!this.f) {
            dVar.e("top");
            dVar.d("stickers_timeline");
        }
        c(dVar, 1, i);
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 1 && xVar.U() && ((d) xVar).h() == 0 && i2 == 1) {
            this.e = true;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof ScrollingHeaderActivity) {
            ((ScrollingHeaderActivity) activity).a(false);
        }
    }

    private cen t() {
        StringBuilder stringBuilder = new StringBuilder();
        String i = i();
        String n = n();
        String str = "tweet";
        str = TwitterScribeLog.a(aD(), "tweet", "avatar", "profile_click");
        String a = ScribeLog.a(stringBuilder, i, n, "tweet", "link", "open_link");
        String a2 = ScribeLog.a(stringBuilder, i, n, "tweet", "platform_photo_card", "click");
        return new cep().a(str).b(a).c(a2).d(ScribeLog.a(stringBuilder, i, n, "tweet", "platform_player_card", "click")).a();
    }
}
