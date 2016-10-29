package defpackage;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.internal.network.k;
import com.twitter.library.service.c;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.json.av.JsonVideoAdResponse;
import com.twitter.model.json.common.g;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bfk */
public class bfk extends c {
    private Map<Long, DynamicAdInfo> a;

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        if (str != null && i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (str.startsWith("application/json")) {
                this.a = ((JsonVideoAdResponse) g.a(inputStream, JsonVideoAdResponse.class)).a();
                return;
            }
            throw new IOException("Reader could not validate. content-type=[" + str + "], or encoding=[" + str2 + "]");
        }
    }

    public void a(k kVar) {
    }

    protected Map<Long, DynamicAdInfo> b() {
        return this.a;
    }
}
