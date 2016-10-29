package defpackage;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.internal.network.k;
import com.twitter.library.service.c;
import com.twitter.model.av.MonetizationCategory;
import com.twitter.model.json.av.JsonMonetizationCategories;
import com.twitter.model.json.av.JsonMonetizationCategories.JsonMonetizationCategory;
import com.twitter.model.json.common.g;
import com.twitter.util.aj;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bfq */
public class bfq extends c {
    private List<MonetizationCategory> a;

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            if (str == null || !str.startsWith("application/json")) {
                throw new IOException("Reader could not validate. content-type=[" + str + "], or encoding=[" + str2 + "]");
            }
            JsonMonetizationCategories jsonMonetizationCategories = (JsonMonetizationCategories) g.a(inputStream, JsonMonetizationCategories.class);
            if (jsonMonetizationCategories != null) {
                this.a = new ArrayList();
                for (JsonMonetizationCategory jsonMonetizationCategory : jsonMonetizationCategories.a) {
                    int intValue = jsonMonetizationCategory.a.intValue();
                    Object obj = jsonMonetizationCategory.b;
                    if (intValue > 0 && aj.b(obj)) {
                        this.a.add(new MonetizationCategory(intValue, obj));
                    }
                }
            }
        }
    }

    public void a(k kVar) {
    }

    public List<MonetizationCategory> b() {
        return this.a;
    }
}
