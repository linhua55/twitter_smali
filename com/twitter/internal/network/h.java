package com.twitter.internal.network;

import cfb;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URI;
import java.net.UnknownHostException;

/* compiled from: Twttr */
public class h implements c {
    public void a(HttpOperation httpOperation) {
        a(httpOperation, String.format("%s, has entity: %s", new Object[]{httpOperation.h(), Boolean.valueOf(httpOperation.e() != null)}));
        if (httpOperation.e() != null) {
            a(httpOperation, String.format("sending content-length: %,d", new Object[]{Long.valueOf(r3.getContentLength())}));
        }
    }

    public void b(HttpOperation httpOperation) {
        k l = httpOperation.l();
        a(httpOperation, String.format("protocol: %s %s status: %d/%s, content: %s (%s), content-length: %,d", new Object[]{l.o, l.p, Integer.valueOf(l.a), l.b, l.l, l.m, Integer.valueOf(l.k)}));
        a(httpOperation, String.format("open: %dms, read: %dms, duration: %dms", new Object[]{Long.valueOf(l.g), Long.valueOf(l.f), Long.valueOf(l.e)}));
        int i = ((l.t[1] + l.t[2]) + l.t[3]) + l.t[4];
        cfb.b("HttpTimings", "EXECUTE_TIME\tbytes:" + l.i + "\tCREATE:" + l.t[0] + "\tINIT:" + l.t[1] + "\tSEND:" + l.t[2] + "\tWAIT:" + l.t[3] + "\tREAD:" + l.t[4] + "\tREAD_TAIL:" + l.t[5] + "\tCLOSE:" + l.t[6] + "\toldOpen:" + l.g + "\toldRead:" + l.f + "\toldClose:" + l.h + "\toldDuration:" + ((l.g + l.f) + l.h) + "\tnewDuration" + i + "\tnewExecute" + ((l.t[5] + i) + l.t[6]));
    }

    public void a(HttpOperation httpOperation, Exception exception) {
        if (exception instanceof UnknownHostException) {
            a(httpOperation, exception.getMessage());
        } else {
            b(httpOperation, exception);
        }
    }

    private String c(HttpOperation httpOperation) {
        URI i = httpOperation.i();
        return "[" + i.getScheme() + "://" + i.getHost() + i.getPath() + "] ";
    }

    private void a(HttpOperation httpOperation, String str) {
        cfb.b("HttpOperation", c(httpOperation) + str);
    }

    private void b(HttpOperation httpOperation, Exception exception) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        stringWriter.append(c(httpOperation)).append("\n");
        exception.printStackTrace(printWriter);
        printWriter.flush();
        cfb.b("HttpOperation", stringWriter.toString());
    }
}
