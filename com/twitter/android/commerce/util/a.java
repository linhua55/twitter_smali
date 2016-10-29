package com.twitter.android.commerce.util;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.mx;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.aj;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class a {
    private static boolean e(String str) {
        return str.startsWith("2131") || str.startsWith("1800") || str.startsWith("2100");
    }

    public static String a(String str) {
        int length = str.length();
        if (length >= 27) {
            return str;
        }
        int i = 27 - length;
        StringBuilder stringBuilder = new StringBuilder(str);
        for (length = 0; length < i; length++) {
            stringBuilder.append(" ");
        }
        return stringBuilder.toString();
    }

    public static String b(String str) {
        String a = aj.a(str);
        int length = a.length();
        if (length <= 4) {
            return a;
        }
        List arrayList = new ArrayList();
        int[] iArr = new int[]{0, 0, 0};
        switch (b.a[Type.e(a).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                arrayList.add(" ");
                iArr[0] = 4;
                arrayList.add(" ");
                iArr[1] = 4;
                arrayList.add(" ");
                iArr[2] = 4;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                arrayList.add(" ");
                iArr[0] = 6;
                arrayList.add(" ");
                iArr[1] = 5;
                arrayList.add(BuildConfig.VERSION_NAME);
                iArr[2] = 0;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                arrayList.add(" ");
                iArr[0] = 6;
                arrayList.add(" ");
                iArr[1] = 4;
                arrayList.add(BuildConfig.VERSION_NAME);
                iArr[2] = 0;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (!e(str)) {
                    arrayList.add(" ");
                    iArr[0] = 4;
                    arrayList.add(" ");
                    iArr[1] = 4;
                    arrayList.add(" ");
                    iArr[2] = 4;
                    break;
                }
                arrayList.add(" ");
                iArr[0] = 4;
                arrayList.add(" ");
                iArr[1] = 4;
                arrayList.add(BuildConfig.VERSION_NAME);
                iArr[2] = 3;
                break;
            default:
                return str;
        }
        String substring = a.substring(0, 4);
        int i = iArr[0] + 4 > length ? length : iArr[0] + 4;
        String substring2 = a.substring(4, i);
        int i2 = iArr[1] + i > length ? length : iArr[1] + i;
        String substring3 = a.substring(i, i2);
        if (iArr[2] + i2 <= length) {
            length = iArr[2] + i2;
        }
        String substring4 = a.substring(i2, length);
        return String.format("%s%s%s%s%s%s%s", new Object[]{substring, arrayList.get(0), substring2, arrayList.get(1), substring3, arrayList.get(2), substring4}).trim();
    }

    public static int c(String str) {
        switch (b.a[Type.e(str).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 19;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 17;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return 16;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (e(str)) {
                    return 18;
                }
                return 19;
            default:
                return 20;
        }
    }

    public static String d(String str) {
        try {
            switch (str.length()) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (Integer.parseInt(str) >= 2) {
                        return "0" + str + "/";
                    }
                    return str;
                case WireMessage.WIRE_CONTROL /*2*/:
                    int parseInt = Integer.parseInt(str);
                    if (parseInt > 12 || parseInt < 1) {
                        return str.substring(0, 1);
                    }
                    return str + "/";
                case WireMessage.WIRE_AUTH /*3*/:
                    if (!str.substring(2, 3).equalsIgnoreCase("/")) {
                        str = str.substring(0, 2) + "/" + str.substring(2, 3);
                        break;
                    }
                    return str;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/yy");
                    simpleDateFormat.setLenient(false);
                    if (simpleDateFormat.parse(str).before(a(Calendar.getInstance()))) {
                        return str.substring(0, 4);
                    }
                    return str;
                default:
                    if (str.length() > 5) {
                        return str.substring(0, 5);
                    }
                    return str;
            }
            if (Integer.parseInt(str.substring(3, 4)) < Integer.parseInt(String.valueOf(Calendar.getInstance().get(1)).substring(2, 3))) {
                return str.substring(0, 3);
            }
            return str;
        } catch (ParseException e) {
            return BuildConfig.VERSION_NAME;
        }
    }

    public static Date a(Calendar calendar) {
        a(calendar, 5);
        a(calendar, 11);
        a(calendar, 12);
        a(calendar, 13);
        a(calendar, 14);
        return calendar.getTime();
    }

    private static void a(Calendar calendar, int i) {
        calendar.set(i, calendar.getMinimum(i));
    }

    public static String a(CreditCard creditCard, Context context) {
        int i;
        switch (b.a[creditCard.a().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                i = 2131362093;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i = 2131362090;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i = 2131362088;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i = 2131362086;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                i = 2131362087;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                i = 2131362089;
                break;
            default:
                return BuildConfig.VERSION_NAME;
        }
        return context.getResources().getString(i, new Object[]{creditCard.b()});
    }
}
