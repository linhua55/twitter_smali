package com.twitter.internal.android.service;

import com.twitter.android.mx;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import java.util.concurrent.ExecutorService;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class p {
    private static p a;
    private final x b;
    private final x c;
    private final x d;
    private final x e;
    private final x f;
    private final x g;
    private final r h;

    private p() {
        int i = 2;
        this.b = new x(5);
        this.c = new x(4);
        this.d = new x(2);
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (availableProcessors <= 2 || availableProcessors >= 16) {
            i = 1;
        }
        this.e = new x(i);
        x xVar = new x(1);
        xVar.setMaximumPoolSize(1);
        xVar.allowCoreThreadTimeOut(true);
        this.f = xVar;
        x xVar2 = new x(1);
        xVar.setMaximumPoolSize(1);
        xVar.allowCoreThreadTimeOut(true);
        this.g = xVar2;
        this.h = new r(this.c);
    }

    public ExecutorService a(ExecutionClass executionClass) {
        if (executionClass == null) {
            return this.b;
        }
        switch (q.a[executionClass.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return this.c;
            case WireMessage.WIRE_CONTROL /*2*/:
                return this.d;
            case WireMessage.WIRE_AUTH /*3*/:
                return this.e;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return this.f;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return this.h;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return this.g;
            default:
                return this.b;
        }
    }

    public static synchronized p a() {
        p pVar;
        synchronized (p.class) {
            if (a == null) {
                a = new p();
            }
            pVar = a;
        }
        return pVar;
    }

    public void b() {
        this.b.shutdownNow();
        this.c.shutdownNow();
        this.d.shutdownNow();
        this.e.shutdownNow();
        this.h.shutdownNow();
    }
}
