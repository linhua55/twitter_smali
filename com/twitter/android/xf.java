package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.twitter.library.api.aw;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.ae;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;
import defpackage.bcx;
import defpackage.boh;
import defpackage.bok;
import defpackage.cgu;
import defpackage.cni;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class xf extends ae implements LoaderCallbacks<List<TwitterUser>>, OnClickListener, OnTouchListener, OnItemClickListener, e<UserView> {
    public boolean a;
    public boolean b;
    protected FriendshipCache c;
    protected final Activity d;
    protected final int e;
    private final xs f;
    private final ListView g;
    private final az h;
    private final Session i;
    private final TwitterScribeAssociation j;
    private final SlidingPanel k;
    private final xl l;
    private final int m;
    private float n;
    private xj o;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (List) obj);
    }

    xf(Activity activity, Session session, TwitterScribeAssociation twitterScribeAssociation, SlidingPanel slidingPanel) {
        this(activity, session, twitterScribeAssociation, slidingPanel, 2130837689);
    }

    xf(Activity activity, Session session, TwitterScribeAssociation twitterScribeAssociation, SlidingPanel slidingPanel, int i) {
        this.b = true;
        this.l = new xl(this, null);
        this.d = activity;
        this.i = session;
        this.j = twitterScribeAssociation;
        this.e = i;
        this.h = az.a((Context) activity);
        this.k = slidingPanel;
        this.k.findViewById(bcx.sliding_panel_top_header_divider).setVisibility(8);
        this.k.findViewById(bcx.sliding_panel_bottom_header_divider).setVisibility(8);
        this.k.findViewById(2131951937).setOnClickListener(this);
        this.m = ViewConfiguration.get(activity).getScaledTouchSlop();
        this.k.setOnTouchListener(this);
        this.g = (ListView) this.k.findViewById(2131952374);
        this.g.setOnItemClickListener(this);
        this.c = new FriendshipCache();
        this.f = a();
        this.g.setAdapter(this.f);
    }

    protected xs a() {
        return new xs(this.d, this.e, this, this.c, false);
    }

    public void a(UserView userView, long j, int i, int i2) {
        if (i == bcx.action_button) {
            cni promotedContent = userView.getPromotedContent();
            boolean isChecked = userView.r.isChecked();
            if (isChecked) {
                this.h.a(new bok(this.d, this.i, j, promotedContent), new xi(this, j));
                this.c.c(j);
            } else {
                this.h.a(new boh(this.d, this.i, j, promotedContent), new xh(this, j));
                this.c.b(j);
            }
            if (this.o != null) {
                boolean z = isChecked;
                long j2 = j;
                this.o.a(z, j2, ((xp) userView.getTag()).g, promotedContent);
            }
        }
    }

    public boolean c() {
        return this.a;
    }

    public void a(xj xjVar) {
        this.o = xjVar;
    }

    public void a(boolean z) {
        this.a = z;
        if (this.o != null) {
            this.o.a(z);
        }
        if (!z || this.f.isEmpty()) {
            this.k.d();
        } else if (this.b) {
            this.k.getViewTreeObserver().addOnPreDrawListener(this.l);
            this.k.a();
        } else if (this.k.getPanelState() == 0) {
            this.k.b();
        }
    }

    public void a(LoaderManager loaderManager, long[] jArr) {
        if (loaderManager != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("tags", jArr);
            loaderManager.restartLoader(1, bundle, this);
        }
    }

    public Loader<List<TwitterUser>> onCreateLoader(int i, Bundle bundle) {
        return new aw(this.d, bundle.getLongArray("tags"));
    }

    public void a(Loader<List<TwitterUser>> loader, List<TwitterUser> list) {
        this.f.a(list);
        if (this.a) {
            a(true);
        }
    }

    public void onLoaderReset(Loader<List<TwitterUser>> loader) {
        this.f.a(cgu.f());
    }

    public void b() {
        this.b = true;
    }

    public void b(Bundle bundle) {
        if (!this.c.a()) {
            bundle.putSerializable("friendship_cache", this.c);
        }
    }

    public void a(Bundle bundle) {
        if (bundle.containsKey("friendship_cache")) {
            this.c = (FriendshipCache) bundle.getSerializable("friendship_cache");
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131951937:
                a(false);
            default:
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        float y = motionEvent.getY();
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case mx.View_android_theme /*0*/:
                this.n = y;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (Math.abs(y - this.n) < ((float) this.m)) {
                    return true;
                }
                break;
        }
        return false;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (view instanceof UserView) {
            if (this.o != null) {
                this.o.c();
            }
            UserView userView = (UserView) view;
            String userName = userView.getUserName();
            Integer j2 = this.c.j(userView.getUserId());
            this.d.startActivityForResult(ProfileActivity.a(this.d, userView.getUserId(), userName, userView.getPromotedContent(), this.j, j2 == null ? -1 : j2.intValue(), null, null), 0);
        }
    }

    protected void a(int i, int i2, Intent intent) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (-1 == i2 && intent != null) {
                    long longExtra = intent.getLongExtra("user_id", 0);
                    if (longExtra > 0 && intent.hasExtra("friendship")) {
                        a(longExtra, intent.getIntExtra("friendship", 0));
                    }
                }
            default:
        }
    }

    public void a(View view) {
        if (c()) {
            this.a = false;
            if (this.o != null) {
                this.o.a(false);
            }
        }
    }

    private void a(long j, int i) {
        if (!this.c.a(j, i)) {
            this.c.b(j, i);
            this.f.notifyDataSetChanged();
        }
    }
}
