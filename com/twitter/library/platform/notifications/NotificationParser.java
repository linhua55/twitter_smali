package com.twitter.library.platform.notifications;

import bia;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.library.api.at;
import com.twitter.model.core.as;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.af;
import com.twitter.model.dms.o;
import com.twitter.model.json.common.g;
import defpackage.bbn;
import defpackage.bip;
import defpackage.cmu;
import java.io.IOException;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class NotificationParser {
    public static ae a(String str) {
        if (str == null) {
            return null;
        }
        af afVar = new af();
        try {
            JsonParser a = at.a.a(str);
            if (a.a() == null) {
                return null;
            }
            JsonToken a2 = a.a();
            long j = 0;
            cmu cmu = null;
            while (a2 != null && a2 != JsonToken.c) {
                String e = a.e();
                switch (u.a[a2.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        a.c();
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (!e.equals(NotificationCompatApi21.CATEGORY_STATUS)) {
                            a.c();
                            break;
                        }
                        a2 = a.a();
                        while (a2 != null && a2 != JsonToken.c) {
                            e = a.e();
                            switch (u.a[a2.ordinal()]) {
                                case WireMessage.WIRE_CHAT /*1*/:
                                    a.c();
                                    break;
                                case WireMessage.WIRE_CONTROL /*2*/:
                                    if (!e.equals("user")) {
                                        a.c();
                                        break;
                                    }
                                    cmu = (cmu) g.c(a, cmu.class);
                                    break;
                                default:
                                    break;
                            }
                            a2 = a.a();
                        }
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        if (!e.equals("id")) {
                            if (!e.equals("url")) {
                                if (!e.equals("display_url")) {
                                    if (!e.equals("expanded_url")) {
                                        break;
                                    }
                                    afVar.c(a.s());
                                    break;
                                }
                                afVar.b(a.s());
                                break;
                            }
                            afVar.a(a.s());
                            break;
                        }
                        j = a.p();
                        break;
                    default:
                        break;
                }
                a2 = a.a();
            }
            String str2 = j <= 0 ? "Invalid tweet id" : cmu == null ? "Invalid tweet owner" : null;
            if (str2 != null) {
                bbn.a(new NotificationParseException("Invalid dm tweet data - " + str2));
                return null;
            }
            as asVar = new as();
            asVar.c = cmu.d;
            asVar.b = cmu.b;
            asVar.d = cmu.c;
            return (ae) afVar.a(j).a(asVar).q();
        } catch (IOException e2) {
            return null;
        }
    }

    public static bip a(String str, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            JsonParser a = at.a.a(str);
            JsonToken a2 = a.a();
            while (a2 != null && a2 != JsonToken.c) {
                switch (u.a[a2.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        a.c();
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        a2 = a.a();
                        while (a2 != null && a2 != JsonToken.c) {
                            String e = a.e();
                            switch (u.a[a2.ordinal()]) {
                                case WireMessage.WIRE_CHAT /*1*/:
                                    a.c();
                                    break;
                                case WireMessage.WIRE_CONTROL /*2*/:
                                    if (!"message".equals(e)) {
                                        a.c();
                                        break;
                                    }
                                    return bip.a(a, z);
                                default:
                                    break;
                            }
                            a2 = a.a();
                        }
                        break;
                    default:
                        break;
                }
                a2 = a.a();
            }
            bbn.a(new NotificationParseException("Invalid event data"));
            return null;
        } catch (IOException e2) {
            return null;
        }
    }

    public static o b(String str) {
        try {
            JsonParser a = at.a.a(str);
            a.a();
            return bia.a(a);
        } catch (IOException e) {
            bbn.a(new NotificationParseException("Invalid event data"));
            return null;
        }
    }
}
