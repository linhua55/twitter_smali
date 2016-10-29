package tv.periscope.android.api;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.squareup.okhttp.OkHttpClient;
import defpackage.dcl;
import defpackage.dcv;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.Locale;
import java.util.concurrent.Executor;
import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;
import retrofit.RestAdapter.Log;
import retrofit.RestAdapter.LogLevel;
import retrofit.android.MainThreadExecutor;
import retrofit.client.Client;
import retrofit.client.OkClient;

/* compiled from: Twttr */
public class RestClient<T> {
    private static final int LOGCAT_MAX_LENGTH = 3950;
    private static final String TAG = "PsRetrofit";
    private static final String USER_AGENT_FORMAT = "%s/%s (%d)";
    private final T mApiService;
    private final RestAdapter mRestAdapter;

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.RestClient.1 */
    class AnonymousClass1 implements RequestInterceptor {
        final /* synthetic */ Context val$appContext;
        final /* synthetic */ String val$buildRevision;
        final /* synthetic */ String val$userAgent;

        AnonymousClass1(String str, Context context, String str2) {
            this.val$userAgent = str;
            this.val$appContext = context;
            this.val$buildRevision = str2;
        }

        public void intercept(RequestFacade requestFacade) {
            requestFacade.addHeader("User-Agent", this.val$userAgent);
            requestFacade.addHeader("package", this.val$appContext.getPackageName());
            if (this.val$buildRevision != null) {
                requestFacade.addHeader("build", this.val$buildRevision);
            }
            requestFacade.addHeader("locale", Locale.getDefault().getLanguage());
            requestFacade.addHeader("install_id", dcl.a(this.val$appContext));
            requestFacade.addHeader("os", dcl.a());
        }
    }

    public RestClient(Context context, Executor executor, String str, Class<T> cls) {
        this(context, executor, str, cls, LogLevel.NONE, getUserAgent(context), null);
    }

    public RestClient(Context context, Executor executor, String str, Class<T> cls, LogLevel logLevel) {
        this(context, executor, str, cls, logLevel, getUserAgent(context), null);
    }

    public RestClient(Context context, Executor executor, String str, Class<T> cls, LogLevel logLevel, String str2, String str3) {
        OkHttpClient okHttpClient = new OkHttpClient();
        Client okClient = new OkClient(okHttpClient);
        CookieHandler cookieManager = new CookieManager();
        cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
        CookieHandler.setDefault(cookieManager);
        okHttpClient.setCookieHandler(cookieManager);
        this.mRestAdapter = new Builder().setEndpoint(str).setExecutors(executor, new MainThreadExecutor()).setClient(okClient).setRequestInterceptor(new AnonymousClass1(str2, context.getApplicationContext(), str3)).setLogLevel(logLevel).setLog(new Log() {
            public void log(String str) {
                RestClient.dumpMessage(str);
            }
        }).build();
        this.mApiService = this.mRestAdapter.create(cls);
    }

    private static String getUserAgent(Context context) {
        String str;
        int i;
        String str2 = null;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName;
            try {
                i = packageInfo.versionCode;
            } catch (NameNotFoundException e) {
                str2 = str;
                str = str2;
                i = 0;
                return String.format(Locale.US, USER_AGENT_FORMAT, new Object[]{r3, str, Integer.valueOf(i)});
            }
        } catch (NameNotFoundException e2) {
            str = str2;
            i = 0;
            return String.format(Locale.US, USER_AGENT_FORMAT, new Object[]{r3, str, Integer.valueOf(i)});
        }
        return String.format(Locale.US, USER_AGENT_FORMAT, new Object[]{r3, str, Integer.valueOf(i)});
    }

    private static void dumpMessage(String str) {
        if (!dcv.a()) {
            return;
        }
        if (str.length() > LOGCAT_MAX_LENGTH) {
            dcv.a(TAG, str.substring(0, LOGCAT_MAX_LENGTH));
            dumpMessage(str.substring(LOGCAT_MAX_LENGTH));
            return;
        }
        dcv.a(TAG, str);
    }

    public RestAdapter getAdapter() {
        return this.mRestAdapter;
    }

    public T getService() {
        return this.mApiService;
    }
}
