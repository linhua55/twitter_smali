package defpackage;

import com.bluelinelabs.logansquare.LoganSquare;
import com.twitter.model.json.contacts.JsonContactVcards;
import com.twitter.util.object.e;
import java.io.IOException;
import java.util.List;
import org.apache.http.entity.StringEntity;

/* compiled from: Twttr */
/* renamed from: bgb */
public class bgb {
    public static StringEntity a(List<String> list) {
        JsonContactVcards jsonContactVcards = new JsonContactVcards();
        jsonContactVcards.a = e.a(list);
        try {
            StringEntity stringEntity = new StringEntity(LoganSquare.serialize(jsonContactVcards), Util.UTF_8);
            stringEntity.setContentType("application/json");
            return stringEntity;
        } catch (IOException e) {
            return null;
        }
    }
}
