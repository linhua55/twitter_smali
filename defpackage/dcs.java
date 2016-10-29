package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Message;

@TargetApi(19)
/* compiled from: Twttr */
/* renamed from: dcs */
public abstract class dcs<T extends Activity> extends dcw<T> {
    public dcs(T t) {
        super(t);
    }

    protected boolean b(Message message, T t) {
        return (t == null || t.isFinishing() || t.isChangingConfigurations() || t.isDestroyed()) ? false : true;
    }
}
