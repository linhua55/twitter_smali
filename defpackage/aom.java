package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: aom */
public class aom implements aoo {
    private final Activity a;

    public aom(Activity activity) {
        this.a = activity;
    }

    public void d() {
        this.a.onBackPressed();
    }

    public <T> void a(T t, n<T> nVar) {
        a(BuildConfig.VERSION_NAME, t, nVar);
    }

    public <T> void a(String str, T t, n<T> nVar) {
        Intent intent = new Intent();
        aol.a(intent, str, t, nVar);
        this.a.setResult(-1, intent);
        this.a.finish();
    }
}
