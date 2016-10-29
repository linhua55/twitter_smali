package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import cch;
import com.twitter.android.widget.p;
import com.twitter.app.common.list.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cw;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.refresh.widget.a;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CollectionPermalinkFragment extends TimelineFragment implements LoaderCallbacks<Cursor>, OnClickListener {
    private FrameLayout m;
    private p n;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.a(2131362055).b(2131362056);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Context activity = getActivity();
        this.m = new FrameLayout(activity);
        ap().a.addHeaderView(this.m);
        p pVar = new p(LayoutInflater.from(activity).inflate(2130968675, null));
        pVar.a.setOnClickListener(this);
        this.n = pVar;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new bu(getActivity(), ck.a(cw.a, this.Y), cch.a, "topics_ev_id=?", new String[]{this.a}, null);
            default:
                return null;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (cursor != null && cursor.moveToFirst()) {
                    Context activity = getActivity();
                    p pVar = this.n;
                    pVar.a(activity, cursor);
                    pVar.a(this.m);
                    aE().a(pVar.c);
                }
            default:
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    protected void c() {
        super.c();
        if (!ao()) {
            getLoaderManager().initLoader(1, null, this);
        }
    }

    protected boolean m() {
        return ((vu) az()).isEmpty() || !this.b;
    }

    protected int n() {
        return ((vu) az()).isEmpty() ? 3 : 4;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (ad() && i2 == 3 && xVar.U()) {
            getLoaderManager().restartLoader(1, null, this);
        }
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017198);
        return true;
    }

    public int b(w wVar) {
        super.b(wVar);
        wVar.j().a(2131953473).b(this.n.b != null);
        return 2;
    }

    public boolean a(ac acVar) {
        p pVar = this.n;
        switch (acVar.a()) {
            case 2131953473:
                aq.b(getActivity(), pVar.f, pVar.g, pVar.c, pVar.d, pVar.h);
                bbu.a(new TwitterScribeLog(this.Y).b(i(), null, null, "custom_timeline", "share"));
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952078:
                startActivity(new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", this.n.e));
            default:
        }
    }

    protected void a(a aVar, boolean z) {
    }
}
