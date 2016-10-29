package android.support.v4.content;

import android.os.Build.VERSION;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public final class ParallelExecutorCompat {
    public static Executor getParallelExecutor() {
        if (VERSION.SDK_INT >= 11) {
            return ExecutorCompatHoneycomb.getParallelExecutor();
        }
        return ModernAsyncTask.THREAD_POOL_EXECUTOR;
    }

    private ParallelExecutorCompat() {
    }
}
