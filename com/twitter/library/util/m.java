package com.twitter.library.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import com.twitter.android.lf;
import java.util.Map;

/* compiled from: Twttr */
public class m extends a {
    public /* bridge */ /* synthetic */ Cursor a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ void a(Map map, o oVar, boolean z) {
        super.a(map, oVar, z);
    }

    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    m(Context context) {
        super(context);
    }

    @TargetApi(23)
    public boolean b() {
        lf a = lf.a();
        if (a.b()) {
            if (a.a(this.a, new String[]{"android.permission.READ_CONTACTS"})) {
                return true;
            }
        }
        return false;
    }
}
