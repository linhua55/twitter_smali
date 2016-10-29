package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: dcw */
public abstract class dcw<T> extends Handler {
    private final WeakReference<T> a;

    protected abstract void a(Message message, T t);

    public dcw(T t) {
        this(t, Looper.myLooper());
    }

    public dcw(T t, Looper looper) {
        super(looper);
        this.a = new WeakReference(t);
    }

    public final void handleMessage(Message message) {
        Object obj = this.a.get();
        if (b(message, obj)) {
            a(message, obj);
            return;
        }
        this.a.clear();
        a(message);
    }

    protected boolean b(Message message, T t) {
        return t != null;
    }

    protected void a(Message message) {
        removeCallbacksAndMessages(null);
    }
}
