package tv.periscope.android.api;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import defpackage.qz;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class SafeListAdapter implements u {

    /* compiled from: Twttr */
    /* renamed from: tv.periscope.android.api.SafeListAdapter.1 */
    class AnonymousClass1 extends s<T> {
        final /* synthetic */ s val$delegate;
        final /* synthetic */ qz val$tokenType;

        AnonymousClass1(s sVar, qz qzVar) {
            this.val$delegate = sVar;
            this.val$tokenType = qzVar;
        }

        public void write(c cVar, T t) throws IOException {
            this.val$delegate.write(cVar, t);
        }

        public T read(a aVar) throws IOException {
            T read = this.val$delegate.read(aVar);
            if (!List.class.isAssignableFrom(this.val$tokenType.a())) {
                return read;
            }
            if (read == null) {
                return Collections.EMPTY_LIST;
            }
            return Collections.unmodifiableList((List) read);
        }
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        return new AnonymousClass1(dVar.a(this, qzVar), qzVar);
    }
}
