package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bso */
public class bso extends t<Bundle, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected Bundle b(JsonParser jsonParser) throws IOException {
        return new Bundle();
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }
}
