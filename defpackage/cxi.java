package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import cxh;
import io.fabric.sdk.android.p;

/* compiled from: Twttr */
/* renamed from: cxi */
public class cxi implements cxh {
    private final SharedPreferences a;
    private final String b;
    private final Context c;

    public cxi(Context context, String str) {
        if (context == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.c = context;
        this.b = str;
        this.a = this.c.getSharedPreferences(this.b, 0);
    }

    @Deprecated
    public cxi(p pVar) {
        this(pVar.E(), pVar.getClass().getName());
    }

    public SharedPreferences a() {
        return this.a;
    }

    public Editor b() {
        return this.a.edit();
    }

    @TargetApi(9)
    public boolean a(Editor editor) {
        if (VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }
}
