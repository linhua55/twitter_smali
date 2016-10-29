package com.google.gson.stream;

import com.google.gson.internal.q;
import java.io.IOException;
import oz;

/* compiled from: Twttr */
final class b extends q {
    b() {
    }

    public void a(a aVar) throws IOException {
        if (aVar instanceof oz) {
            ((oz) aVar).o();
            return;
        }
        int a = aVar.i;
        if (a == 0) {
            a = aVar.o();
        }
        if (a == 13) {
            aVar.i = 9;
        } else if (a == 12) {
            aVar.i = 8;
        } else if (a == 14) {
            aVar.i = 10;
        } else {
            throw new IllegalStateException("Expected a name but was " + aVar.f() + " " + " at line " + aVar.v() + " column " + aVar.w() + " path " + aVar.q());
        }
    }
}
