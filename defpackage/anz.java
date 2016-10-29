package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/* compiled from: Twttr */
/* renamed from: anz */
public class anz {
    private final SharedPreferences a;

    public anz(Context context) {
        this.a = anz.a(context);
    }

    int a() {
        return this.a.getInt("year", any.a);
    }

    void a(int i) {
        Editor edit = this.a.edit();
        edit.putInt("year", i);
        edit.apply();
    }

    private static SharedPreferences a(Context context) {
        return context.getSharedPreferences("year_class", 0);
    }
}
