package tv.periscope.android.event;

import retrofit.RetrofitError;
import tv.periscope.android.api.ApiRequest;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.event.ApiEvent.Type;

/* compiled from: Twttr */
public class b extends ApiEvent {
    public final ApiRunnable g;

    public b(Type type, String str, ApiRequest apiRequest, Object obj, boolean z) {
        this(type, str, apiRequest, obj, null, z, null);
    }

    public b(Type type, String str, ApiRequest apiRequest, Object obj, RetrofitError retrofitError, boolean z, ApiRunnable apiRunnable) {
        super(type, str, apiRequest, obj, retrofitError, z);
        this.g = apiRunnable;
    }
}
