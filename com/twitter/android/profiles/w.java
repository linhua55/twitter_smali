package com.twitter.android.profiles;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import bbn;
import cdg;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.TweetActivity;
import com.twitter.android.bu;
import com.twitter.android.kr;
import com.twitter.android.timeline.be;
import com.twitter.android.vr;
import com.twitter.android.vu;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.api.timeline.ae;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.u;
import com.twitter.util.object.ObjectUtils;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class w implements LoaderCallbacks<Cursor>, OnItemClickListener, ap, bb {
    private final WeakReference<Activity> a;
    private final bg b;
    private final Session c;
    private final LoaderManager d;
    private final ao e;
    private final boolean f;
    private final TwitterScribeAssociation g;
    private final vr h;
    private final kr<View, Tweet> i;
    private final az j;
    private vu k;
    private long l;
    private boolean m;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public w(Activity activity, bg bgVar, LoaderManager loaderManager, az azVar, ao aoVar, boolean z, TwitterScribeAssociation twitterScribeAssociation, vr vrVar, kr<View, Tweet> krVar) {
        this.a = new WeakReference(activity);
        this.b = bgVar;
        this.c = this.b.c();
        this.d = loaderManager;
        this.e = aoVar;
        this.f = z;
        this.g = twitterScribeAssociation;
        this.h = vrVar;
        this.i = krVar;
        this.j = azVar;
        if (this.e.a() != null) {
            this.l = this.e.a().M;
        }
    }

    public vu a() {
        Activity activity = (Activity) this.a.get();
        if (this.k == null && activity != null) {
            this.k = new vu((TwitterFragmentActivity) activity, this.f, this.h, this.e.c(), this.g, new u().a(true).f(this.c.g() == this.e.e()).a());
            this.k.b(this.i);
        }
        return this.k;
    }

    public void b() {
        a();
        this.l = this.e.a().M;
        this.d.initLoader(4, null, this);
        this.e.a(this);
    }

    public void a(ao aoVar) {
        if (aoVar.a() != null && aoVar.a().M != this.l && !this.m) {
            this.d.destroyLoader(4);
            this.d.initLoader(4, null, this);
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            this.l = this.e.a().M;
            this.e.a(this);
            if (i == 4 && this.l > 0) {
                String str = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
                return new bu(activity, ck.b(this.l, this.c.g()), cdg.b, null, null, "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC");
            }
        }
        return null;
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        Activity activity = (Activity) this.a.get();
        if (loader.getId() == 4 && !this.m && this.k != null && activity != null) {
            this.k.c(cursor);
            if (cursor == null || cursor.getCount() == 0) {
                this.j.a(new ae(activity, this.c, this.e.a().M), 1, this);
            }
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        if (this.k != null) {
            this.k.a(be.b());
        }
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        aa aaVar = (aa) xVar.l().b();
        Session a = this.b.a(xVar);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (a != null && this.k != null && aaVar.b() && !this.m && this.l > 0) {
                    try {
                        this.d.restartLoader(4, null, this);
                    } catch (Throwable e) {
                        bbn.a(e);
                    }
                }
            default:
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Activity activity = (Activity) this.a.get();
        com.twitter.android.timeline.bb bbVar = (com.twitter.android.timeline.bb) ObjectUtils.a(this.k.getItem(i));
        if (bbVar != null && activity != null) {
            activity.startActivity(new Intent(activity, TweetActivity.class).putExtra("tw", bbVar.b).putExtra("association", this.g));
        }
    }

    public void c() {
        this.m = true;
    }
}
