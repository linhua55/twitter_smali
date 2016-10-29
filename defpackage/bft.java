package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import bfu;
import cfb;
import com.twitter.android.bu;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.co;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: bft */
public class bft implements LoaderCallbacks<Cursor> {
    static final String[] a;
    private static final String b;
    private final Context c;
    private final TwitterUser d;
    private final bfu e;
    private final az f;
    private final bg g;
    private final String h;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = new String[]{"user_id", "business_profile", "last_synced"};
        b = bft.class.getSimpleName();
    }

    public static void a(Context context, LoaderManager loaderManager, TwitterUser twitterUser, int i, bfu bfu, String str) {
        loaderManager.restartLoader(i, null, new bft(context, twitterUser, bfu, str));
    }

    public bft(Context context, TwitterUser twitterUser, bfu bfu, String str) {
        this.c = context;
        this.d = twitterUser;
        this.e = bfu;
        this.f = az.a(context);
        this.g = bg.a();
        this.h = str;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Uri a = co.a(this.d.c, this.g.c().g());
        cfb.b(b, "Loading business profile for " + this.d.k + " from " + a);
        return new bu(this.c, a, a, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            cfb.b(b, "No cached business profile found for: " + this.d.k);
        } else {
            m mVar = (m) com.twitter.util.serialization.m.a(cursor.getBlob(1), m.a);
            if (al.b() - cursor.getLong(2) < 3600000) {
                cfb.b(b, "Loaded cached: " + mVar);
                this.e.a(mVar);
                return;
            }
            cfb.b(b, "Loaded stale: " + mVar);
        }
        cfb.b(b, "Fetching business profile for " + this.d.k);
        this.f.a(new bfv(this.c, this.g.c(), this.d.c, this.h));
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
