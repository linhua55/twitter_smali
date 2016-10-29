package com.twitter.android.av;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ListView;
import cen;
import com.twitter.android.RootTweetActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.bu;
import com.twitter.android.timeline.aw;
import com.twitter.android.vr;
import com.twitter.android.vt;
import com.twitter.android.vu;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.library.api.search.d;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import defpackage.bdl;
import defpackage.ccu;

/* compiled from: Twttr */
public class ViewMoreVideoFragment extends TwitterListFragment<aw, bdl<aw>> {
    private long a;
    private Tweet b;
    private boolean c;

    public ViewMoreVideoFragment() {
        this.c = true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.c = bundle.getBoolean("more_old_data_available", true);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("more_old_data_available", this.c);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        h C = C();
        a((TwitterScribeAssociation) C.h("association"));
        this.a = C.a("search_id", -1);
        this.b = (Tweet) C.h("tw");
        ap().a(new vu(aI(), true, b(BuildConfig.VERSION_NAME), null, aD()));
        super.c();
    }

    protected void c() {
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    protected void g() {
        a(2);
    }

    private void a(int i) {
        int i2 = 2;
        if (i == 2) {
            i2 = 1;
        }
        c(bq.a(getActivity(), this.Z.c(), this.a, this.b, i2), i, i);
    }

    protected void h() {
        if (ao()) {
            Cursor aA = aA();
            if (ar() && aA != null && aA.getInt(16) == 0 && aA.getCount() < 400 && this.c) {
                a(1);
            }
        }
    }

    protected void a(x xVar, int i, int i2) {
        boolean z = true;
        super.a(xVar, i, i2);
        if (i == 1) {
            if (((d) xVar).h() <= 0) {
                z = false;
            }
            this.c = z;
        }
        a(false);
    }

    protected void a(ListView listView, View view, int i, long j) {
        super.a(listView, view, i, j);
        startActivity(new Intent(getActivity(), aw() ? RootTweetActivity.class : TweetActivity.class).putExtra("association", aD()).setData(ck.b(((vt) view.getTag()).d.getTweet().H, this.Z.c().g())));
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(db.a, aT().g()), ccu.a, "search_id=?", new String[]{String.valueOf(this.a)}, "type_id ASC, _id ASC");
    }

    private vr b(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = "video_timeline";
        str2 = BuildConfig.VERSION_NAME;
        TwitterScribeAssociation aD = aD();
        return new vr(this, aD, null, cen.a(TwitterScribeLog.a(aD, str, "avatar", "profile_click"), ScribeLog.a(stringBuilder, "video_timeline", BuildConfig.VERSION_NAME, str, "link", "open_link"), ScribeLog.a(stringBuilder, "video_timeline", BuildConfig.VERSION_NAME, str, "platform_photo_card", "click"), ScribeLog.a(stringBuilder, "video_timeline", BuildConfig.VERSION_NAME, str, "platform_player_card", "click")));
    }
}
