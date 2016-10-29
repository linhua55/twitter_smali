package com.twitter.library.network;

import android.content.Context;
import android.net.Uri;
import com.twitter.internal.network.a;
import com.twitter.internal.network.p;
import com.twitter.library.util.af;
import cvi;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.message.BasicHeader;

/* compiled from: Twttr */
public class m extends AbstractHttpEntity {
    private final p a;
    private final Context b;
    private final ArrayList<o> c;
    private int d;

    public m(Context context, p pVar) {
        this.a = pVar;
        this.contentType = new BasicHeader("Content-Type", "multipart/form-data; boundary=twitter");
        this.c = new ArrayList();
        this.b = context.getApplicationContext();
        this.chunked = true;
    }

    public boolean isRepeatable() {
        return true;
    }

    public long getContentLength() {
        return (long) this.d;
    }

    public InputStream getContent() throws IOException {
        return new r(this.c);
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        OutputStream aVar = new a(outputStream, (long) this.d, this.a);
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((o) it.next()).a(aVar);
        }
    }

    public void a(String str, String str2, Uri uri) throws IOException {
        byte[] bytes = ("--twitter" + "\r\n" + "Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"" + "\r\n" + "Content-Type: image/jpeg" + "\r\n" + "Content-Transfer-Encoding: binary" + "\r\n" + "\r\n").getBytes(Util.UTF_8);
        byte[] bytes2 = "\r\n".getBytes(Util.UTF_8);
        ArrayList arrayList = this.c;
        arrayList.add(new n(bytes));
        arrayList.add(new q(this.b, uri));
        arrayList.add(new n(bytes2));
        try {
            this.d = ((bytes.length + cvi.b(this.b, uri)) + bytes2.length) + this.d;
        } catch (Throwable e) {
            throw ((IOException) new IOException().initCause(e));
        }
    }

    public void a(String str, String str2, af afVar, int i) throws IOException {
        byte[] bytes = ("--twitter" + "\r\n" + "Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"" + "\r\n" + "Content-Transfer-Encoding: binary" + "\r\n" + "\r\n").getBytes(Util.UTF_8);
        byte[] bytes2 = "\r\n".getBytes(Util.UTF_8);
        ArrayList arrayList = this.c;
        arrayList.add(new n(bytes));
        arrayList.add(new p(afVar));
        arrayList.add(new n(bytes2));
        this.d = ((bytes.length + i) + bytes2.length) + this.d;
    }

    public void a() throws IOException {
        n nVar = new n("--twitter--\r\n".getBytes(Util.UTF_8));
        this.d += nVar.a.length;
        this.c.add(nVar);
    }
}
