package com.twitter.android.initialization;

import android.content.res.Configuration;
import aog;
import com.twitter.library.client.StrictModeInitializer;
import com.twitter.library.initialization.AccessibilityInitializer;
import com.twitter.library.initialization.ActivityOrientationInitializer;
import com.twitter.library.initialization.ActivityTrackingInitializer;
import com.twitter.library.initialization.AppMigrationInitializer;
import com.twitter.library.initialization.AssertsInitializer;
import com.twitter.library.initialization.FeatureSwitchesInitializer;
import com.twitter.library.initialization.HashIconInitializer;
import com.twitter.library.initialization.LeakTrackerInitializer;
import com.twitter.library.initialization.LibrarySingletonInitializer;
import com.twitter.library.initialization.MediaManagerConfigChangeInitializer;
import com.twitter.library.initialization.SessionManagerInitializer;
import com.twitter.library.initialization.UserPreferencesInitializer;
import com.twitter.library.initialization.WebViewInitializer;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.SerializationInitializer;
import cto;
import defpackage.aof;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class n implements aog {
    private static final List<aof<Void>> a;
    private static final List<aof<Void>> b;
    private static final List<aof<Configuration>> c;
    private final boolean d;

    static {
        a = com.twitter.util.collection.n.a(new LoggerInitializer(), new aof[]{new StrictModeInitializer(), new SessionManagerInitializer(), new ErrorReporterInitializer(true, true), new OomeReporterInitializer(), new SerializationInitializer(), new MetricsInitializer(), new FeatureSwitchesInitializer(), new LoggedoutPushInitializer()});
        b = com.twitter.util.collection.n.a(new AssertsInitializer(), new aof[]{new FrescoInitializer(), new JobCreatorInitializer(), new AppGlobalInitializer(), new ScribeEventReporterInitializer(), new DataUsageObserverInitializer(), new PromotedEventReporterInitializer(), new GeoInitializer(), new LibrarySingletonInitializer(), new LocaleInitializer(), new YearClassInitializer(), new NARCInitializer(), new AppControllerInitializer(), new AdIdInitializer(), new ClearCacheInitializer(), new RegisteredCardsInitializer(), new HashIconInitializer(), new SingletonInitializer(), new AccessibilityInitializer(), new AppMigrationInitializer(), new WebViewInitializer(), new AppVisibilityTrackerInitializer(), new LeakTrackerInitializer(), new AppStyleInitializer(), new ActivityOrientationInitializer(), new ActivityTrackingInitializer(), new PersistentJobsInitializer(), new OemReferrerInitializer(), new UserPreferencesInitializer(), new TypefaceInitializer(), new ChromeCustomTabsInitializer(), new AnimationInitializer(), new NetworkInfoScribeInitializer(), new ClassLoaderInitializer(), new AutoPlayPreferencesInitializer(), new JobScheduleInitializer()});
        c = com.twitter.util.collection.n.a(new LocaleInitializer(), new aof[]{new MediaManagerConfigChangeInitializer()});
    }

    public n(boolean z) {
        this.d = z;
    }

    public Iterable<aof<Void>> a() {
        if (this.d) {
            return a;
        }
        return cto.a(new Iterable[]{a, b});
    }

    public Iterable<aof<Configuration>> b() {
        if (this.d) {
            return (Iterable) ObjectUtils.a(new ArrayList());
        }
        return c;
    }
}
