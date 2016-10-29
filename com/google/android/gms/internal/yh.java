package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

class yh {
    public long a;
    public String b;
    public String c;
    public long d;
    public long e;
    public long f;
    public long g;
    public Map<String, String> h;

    private yh() {
    }

    public yh(String str, aw awVar) {
        this.b = str;
        this.a = (long) awVar.a.length;
        this.c = awVar.b;
        this.d = awVar.c;
        this.e = awVar.d;
        this.f = awVar.e;
        this.g = awVar.f;
        this.h = awVar.g;
    }

    public static yh a(InputStream inputStream) throws IOException {
        yh yhVar = new yh();
        if (yf.a(inputStream) != 538247942) {
            throw new IOException();
        }
        yhVar.b = yf.c(inputStream);
        yhVar.c = yf.c(inputStream);
        if (yhVar.c.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            yhVar.c = null;
        }
        yhVar.d = yf.b(inputStream);
        yhVar.e = yf.b(inputStream);
        yhVar.f = yf.b(inputStream);
        yhVar.g = yf.b(inputStream);
        yhVar.h = yf.d(inputStream);
        return yhVar;
    }

    public aw a(byte[] bArr) {
        aw awVar = new aw();
        awVar.a = bArr;
        awVar.b = this.c;
        awVar.c = this.d;
        awVar.d = this.e;
        awVar.e = this.f;
        awVar.f = this.g;
        awVar.g = this.h;
        return awVar;
    }

    public boolean a(OutputStream outputStream) {
        try {
            yf.a(outputStream, 538247942);
            yf.a(outputStream, this.b);
            yf.a(outputStream, this.c == null ? TtmlNode.ANONYMOUS_REGION_ID : this.c);
            yf.a(outputStream, this.d);
            yf.a(outputStream, this.e);
            yf.a(outputStream, this.f);
            yf.a(outputStream, this.g);
            yf.a(this.h, outputStream);
            outputStream.flush();
            return true;
        } catch (IOException e) {
            xi.b("%s", e.toString());
            return false;
        }
    }
}
