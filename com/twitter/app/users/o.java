package com.twitter.app.users;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.android.bu;
import com.twitter.android.xs;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.provider.dg;
import com.twitter.library.service.x;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import defpackage.bdd;
import defpackage.bou;
import defpackage.cdk;
import defpackage.cgq;

/* compiled from: Twttr */
public abstract class o<T extends xs> implements LoaderCallbacks<Cursor>, bb {
    protected final long a;
    protected final FragmentActivity b;
    protected final T c;
    protected final FriendshipCache d;
    protected final int e;
    private final az f;
    private Uri g;
    private String[] h;
    private boolean i;

    abstract bou a(int i);

    public abstract void a();

    public abstract void a(Bundle bundle);

    public abstract T b(@DrawableRes int i, e<UserView> eVar);

    public abstract void b(Bundle bundle);

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    protected o(FragmentActivity fragmentActivity, @DrawableRes int i, FriendshipCache friendshipCache, long j, e<UserView> eVar, int i2) {
        this.b = fragmentActivity;
        this.f = az.a(this.b);
        this.a = j;
        this.c = b(i, (e) eVar);
        this.d = friendshipCache;
        this.e = i2;
        d();
    }

    private void d() {
        this.h = cdk.b;
        switch (this.e) {
            case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                this.g = ContentUris.withAppendedId(dg.z, this.a).buildUpon().appendQueryParameter("ownerId", String.valueOf(this.a)).build();
            default:
                this.g = ContentUris.withAppendedId(dg.k, this.a).buildUpon().appendQueryParameter("ownerId", String.valueOf(this.a)).build();
        }
    }

    protected int b() {
        return 50;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        if (i == 0) {
            return new bu(this.b, this.g, this.h, null, null, null);
        }
        return null;
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (loader.getId() == 0) {
            this.c.a(new cgq(cursor));
            this.c.notifyDataSetChanged();
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void a(boolean z) {
        if (z) {
            b(0);
        } else {
            this.b.getSupportLoaderManager().initLoader(0, null, this);
        }
    }

    public T c() {
        return this.c;
    }

    private void b(int i) {
        this.f.a(a(i), 0, this);
    }

    public void b(int i, x xVar) {
        if (i == 0 && !this.i) {
            this.i = true;
            this.b.getSupportLoaderManager().initLoader(0, null, this);
        }
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }
}
