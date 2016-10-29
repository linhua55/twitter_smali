package retrofit.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public final class MainThreadExecutor implements Executor {
    private final Handler handler;

    public MainThreadExecutor() {
        this.handler = new Handler(Looper.getMainLooper());
    }

    public void execute(Runnable runnable) {
        this.handler.post(runnable);
    }
}
