package defpackage;

import android.content.Context;
import android.net.Uri.Builder;
import android.support.annotation.VisibleForTesting;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.media.manager.am;
import com.twitter.media.model.VideoFile;
import com.twitter.media.request.ResourceResponse;
import com.twitter.model.av.DynamicAd;
import com.twitter.util.aj;
import com.twitter.util.network.b;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: Twttr */
/* renamed from: bqa */
public abstract class bqa extends bpx {
    @VisibleForTesting
    static final TimeUnit a;
    @VisibleForTesting
    public final String b;
    @VisibleForTesting
    String c;
    private final bqb d;

    static {
        a = TimeUnit.MILLISECONDS;
    }

    public bqa(String str) {
        this(str, new bqb());
    }

    protected bqa(String str, bqb bqb) {
        this.b = str;
        this.d = bqb;
    }

    protected HttpOperation a(Context context, Map<String, String> map, i iVar, String str) {
        try {
            Object absolutePath;
            ResourceResponse resourceResponse = (ResourceResponse) this.d.a(context.getApplicationContext()).e().f(am.a(this.b).a()).get(15000, a);
            VideoFile videoFile = resourceResponse != null ? (VideoFile) resourceResponse.f() : null;
            if (videoFile != null) {
                absolutePath = videoFile.d.getAbsolutePath();
            } else {
                absolutePath = null;
            }
            if (aj.b(absolutePath)) {
                this.c = absolutePath;
            }
        } catch (InterruptedException e) {
        } catch (ExecutionException e2) {
        } catch (TimeoutException e3) {
        }
        return null;
    }

    protected String b() {
        return aj.b(this.c) ? this.c : this.b;
    }

    protected i a(Context context) {
        return null;
    }

    protected void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd) {
    }

    protected void a(Context context, Map<String, String> map, b bVar) {
    }
}
