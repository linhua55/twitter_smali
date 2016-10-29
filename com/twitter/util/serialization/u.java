package com.twitter.util.serialization;

import com.twitter.android.mx;
import java.io.IOException;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
final class u extends k<Object> {
    u() {
    }

    protected void a(q qVar, Object obj) throws IOException {
        if (obj instanceof String) {
            qVar.b((String) obj);
        } else if (obj instanceof Integer) {
            qVar.e(((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            qVar.b(((Boolean) obj).booleanValue());
        } else if (obj instanceof Double) {
            qVar.b(((Double) obj).doubleValue());
        } else if (obj instanceof Float) {
            qVar.b(((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            qVar.b(((Long) obj).longValue());
        } else {
            throw new IllegalArgumentException("Simple object serializer does not support objects of type " + obj.getClass());
        }
    }

    protected Object b(p pVar, int i) throws IOException {
        byte o = pVar.o();
        switch (o) {
            case WireMessage.WIRE_CONTROL /*2*/:
                return Integer.valueOf(pVar.e());
            case WireMessage.WIRE_AUTH /*3*/:
                return Long.valueOf(pVar.f());
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return Float.valueOf(pVar.g());
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return Double.valueOf(pVar.h());
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return Boolean.valueOf(pVar.d());
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return pVar.p();
            default:
                throw new SerializationException("Unexpected type found in simple object deserialization: " + o);
        }
    }
}
