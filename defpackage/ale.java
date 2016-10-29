package defpackage;

import android.database.Cursor;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
/* renamed from: ale */
class ale extends chj<TwitterUser> {
    final /* synthetic */ ald a;

    ale(ald ald) {
        this.a = ald;
    }

    public TwitterUser a(Cursor cursor) {
        return di.a(cursor);
    }
}
