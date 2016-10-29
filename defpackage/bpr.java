package defpackage;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.internal.network.k;
import com.twitter.library.service.c;
import com.twitter.model.av.ab;
import com.twitter.model.json.common.g;
import com.twitter.model.json.watchmode.JsonWatchModeInfo;
import com.twitter.model.json.watchmode.JsonWatchModeResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bpr */
public class bpr extends c {
    private final List<ab> a;

    public bpr() {
        this.a = new ArrayList();
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        if (str != null && i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            for (JsonWatchModeInfo jsonWatchModeInfo : ((JsonWatchModeResponse) g.a(inputStream, JsonWatchModeResponse.class)).a) {
                if (jsonWatchModeInfo.c()) {
                    this.a.add(jsonWatchModeInfo.a());
                }
            }
        }
    }

    public void a(k kVar) {
    }

    public List<ab> b() {
        return this.a;
    }
}
