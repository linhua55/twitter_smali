package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.r;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bte */
public class bte extends t<r, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected r b(JsonParser jsonParser) throws IOException {
        return btj.a(jsonParser);
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }
}
