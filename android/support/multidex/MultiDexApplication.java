package android.support.multidex;

import android.app.Application;
import android.content.Context;

/* compiled from: Twttr */
public class MultiDexApplication extends Application {
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}
