package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.support.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: Twttr */
public class TintContextWrapper extends ContextWrapper {
    private static final ArrayList<WeakReference<TintContextWrapper>> sCache;
    private Resources mResources;
    private final Theme mTheme;

    static {
        sCache = new ArrayList();
    }

    public static Context wrap(@NonNull Context context) {
        if (!shouldWrap(context)) {
            return context;
        }
        Context context2;
        int size = sCache.size();
        for (int i = 0; i < size; i++) {
            WeakReference weakReference = (WeakReference) sCache.get(i);
            context2 = weakReference != null ? (TintContextWrapper) weakReference.get() : null;
            if (context2 != null && context2.getBaseContext() == context) {
                return context2;
            }
        }
        context2 = new TintContextWrapper(context);
        sCache.add(new WeakReference(context2));
        return context2;
    }

    private static boolean shouldWrap(@NonNull Context context) {
        if ((context instanceof TintContextWrapper) || (context.getResources() instanceof TintResources)) {
            return false;
        }
        return true;
    }

    private TintContextWrapper(@NonNull Context context) {
        super(context);
        this.mTheme = getResources().newTheme();
        this.mTheme.setTo(context.getTheme());
    }

    public Theme getTheme() {
        return this.mTheme;
    }

    public void setTheme(int i) {
        this.mTheme.applyStyle(i, true);
    }

    public Resources getResources() {
        if (this.mResources == null) {
            this.mResources = new TintResources(this, super.getResources());
        }
        return this.mResources;
    }
}
