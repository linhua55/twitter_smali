package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import bfb;
import cfb;
import com.twitter.android.bu;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.cm;
import com.twitter.model.ads.e;
import com.twitter.util.al;
import com.twitter.util.serialization.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bfa */
public class bfa implements LoaderCallbacks<Cursor> {
    private static final String[] a;
    private final Context b;
    private final bg c;
    private final az d;
    private final List<bfb> e;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = new String[]{"promotable_users", "last_synced"};
    }

    public static void a(Context context, LoaderManager loaderManager, int i, List<bfb> list) {
        loaderManager.restartLoader(i, null, new bfa(context, list));
    }

    public static void a(Context context, LoaderManager loaderManager, int i, bfb bfb) {
        List arrayList = new ArrayList();
        arrayList.add(bfb);
        bfa.a(context, loaderManager, i, arrayList);
    }

    public bfa(Context context, List<bfb> list) {
        this.b = context;
        this.e = list;
        this.d = az.a(context);
        this.c = bg.a();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this.b, cm.a(this.c.c().g()), a, null, null, null);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        Session c = this.c.c();
        long b = al.b();
        if (cursor == null || !cursor.moveToFirst()) {
            cfb.b("AdsAccountPermissionsLd", "Cache miss");
        } else {
            e eVar = (e) m.a(cursor.getBlob(0), e.a);
            if (b - cursor.getLong(1) < 3600000) {
                cfb.b("AdsAccountPermissionsLd", "Loaded cached: " + eVar);
                for (bfb a : this.e) {
                    a.a(eVar);
                }
                return;
            }
            cfb.b("AdsAccountPermissionsLd", "Stale Ads Account permissions");
        }
        cfb.b("AdsAccountPermissionsLd", "Fetching Ads Account permissions");
        this.d.a(new bfc(this.b, c));
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
