package tv.periscope.chatman.api;

import com.squareup.okhttp.OkHttpClient;
import defpackage.ddj;
import java.util.concurrent.Executor;
import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;
import retrofit.RestAdapter.Builder;
import retrofit.RestAdapter.Log;
import retrofit.RestAdapter.LogLevel;
import retrofit.client.OkClient;

/* compiled from: Twttr */
public class HttpClient {
    private final HttpService mService;

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.chatman.api.HttpClient.1 */
    class AnonymousClass1 implements RequestInterceptor {
        final /* synthetic */ String val$clientIdentifier;

        AnonymousClass1(String str) {
            this.val$clientIdentifier = str;
        }

        public void intercept(RequestFacade requestFacade) {
            requestFacade.addHeader("User-Agent", "ChatMan/1 (Android) " + this.val$clientIdentifier);
        }
    }

    public HttpClient(Executor executor, Executor executor2, String str, LogLevel logLevel, String str2) {
        this.mService = (HttpService) new Builder().setRequestInterceptor(new AnonymousClass1(str2)).setExecutors(executor, executor2).setEndpoint(str + "/chatapi/v1").setLogLevel(logLevel).setClient(new OkClient(new OkHttpClient())).setLog(new Log() {
            public void log(String str) {
                ddj.e("CM", str);
            }
        }).build().create(HttpService.class);
    }

    public HttpService getService() {
        return this.mService;
    }
}
