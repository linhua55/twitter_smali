package com.twitter.app.users;

import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.Loader;
import com.twitter.android.addressbook.a;
import com.twitter.android.addressbook.c;
import com.twitter.android.xs;
import com.twitter.library.client.bg;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import defpackage.bou;

/* compiled from: Twttr */
public class d extends o<a> {
    private final e f;

    public /* synthetic */ xs b(@DrawableRes int i, e eVar) {
        return a(i, eVar);
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public d(FragmentActivity fragmentActivity, FriendshipCache friendshipCache, long j, e<UserView> eVar, e eVar2, c cVar) {
        super(fragmentActivity, 2130837689, friendshipCache, j, eVar, 41);
        ((a) c()).a(cVar);
        this.f = eVar2;
    }

    public void a(Bundle bundle) {
        bundle.putBoolean("state_should_show_retry_prompt", ((a) c()).d());
    }

    public void b(Bundle bundle) {
        if (bundle.getBoolean("state_should_show_retry_prompt")) {
            ((a) c()).a(true);
        }
    }

    public void a() {
        ((a) this.c).b();
    }

    bou a(int i) {
        bou bou = new bou(this.b, bg.a().c(), this.e);
        bou.c = i;
        bou.j = b();
        return bou;
    }

    public a a(@DrawableRes int i, e<UserView> eVar) {
        return new a(this.b, i, eVar, this.d, 5, this.a);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        super.a((Loader) loader, cursor);
        if (loader.getId() == 0 && cursor != null && cursor.getCount() > 0) {
            this.f.a(cursor.getCount());
        }
    }
}
