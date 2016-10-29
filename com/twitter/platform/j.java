package com.twitter.platform;

import android.content.Context;
import android.os.AsyncTask;
import bbn;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.c;
import java.io.File;
import java.util.List;

/* compiled from: Twttr */
public class j extends a implements o {
    private final Context a;

    public j(Context context) {
        this.a = context;
    }

    protected File a() {
        try {
            File externalFilesDir = this.a.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                return externalFilesDir;
            }
            return this.a.getFilesDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Throwable e2) {
            bbn.a(e2);
            return null;
        }
    }

    public com.twitter.util.concurrent.j<Boolean> c(File file) {
        return (file != null && file.exists() && a(file)) ? new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new k(this, file)).a() : ObservablePromise.a(Boolean.valueOf(false));
    }

    public com.twitter.util.concurrent.j<Boolean> a(List<File> list) {
        return (list == null || list.size() <= 0) ? ObservablePromise.a(Boolean.valueOf(false)) : new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new l(this, list)).a();
    }
}
