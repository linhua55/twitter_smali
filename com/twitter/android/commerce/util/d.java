package com.twitter.android.commerce.util;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager.BadTokenException;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.mx;
import com.twitter.library.commerce.model.ServerError;
import com.twitter.library.commerce.model.ServerErrorType;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class d {
    private final Map<Integer, TextView> a;
    private final Set<Integer> b;
    private final Context c;

    public d(Context context) {
        this.a = new HashMap();
        this.b = new HashSet();
        this.c = context;
    }

    public d a(Integer num, TextView textView) {
        this.a.put(num, textView);
        return this;
    }

    public void a(Integer num) {
        this.b.add(num);
    }

    public List<Integer> a(List<Integer> list) {
        a();
        List<Integer> arrayList = new ArrayList();
        Map map = this.a;
        String format = String.format("%n", new Object[0]);
        for (Integer intValue : list) {
            int intValue2 = intValue.intValue();
            TextView textView = (TextView) map.get(Integer.valueOf(intValue2));
            if (textView != null) {
                CharSequence charSequence;
                if (textView.getError() == null) {
                    charSequence = null;
                } else {
                    charSequence = textView.getError().toString();
                }
                CharSequence string = this.c.getResources().getString(intValue2);
                if (!aj.b(charSequence) || charSequence.contains(string)) {
                    charSequence = string;
                } else {
                    charSequence = (string + format) + charSequence;
                }
                textView.setError(charSequence);
            } else {
                arrayList.add(Integer.valueOf(intValue2));
            }
        }
        return arrayList;
    }

    private void a() {
        for (TextView error : this.a.values()) {
            error.setError(null, null);
        }
    }

    public List<Integer> b(List<ServerError> list) {
        List<Integer> arrayList = new ArrayList();
        for (ServerError serverError : list) {
            ServerErrorType b = serverError.b();
            if (b != null) {
                if (b.equals(ServerErrorType.INVALID_PARAMETER)) {
                    arrayList.add(Integer.valueOf(a(serverError.a())));
                } else {
                    arrayList.add(Integer.valueOf(b.b()));
                }
                if (b.c()) {
                    a(Integer.valueOf(b.b()));
                }
            }
        }
        return arrayList;
    }

    private static int a(String str) {
        Object obj = -1;
        switch (str.hashCode()) {
            case -2053263135:
                if (str.equals("postal_code")) {
                    obj = 5;
                    break;
                }
                break;
            case -1881886578:
                if (str.equals("street1")) {
                    obj = 2;
                    break;
                }
                break;
            case -1749678068:
                if (str.equals("ccExpirationYear")) {
                    obj = 10;
                    break;
                }
                break;
            case -1677176261:
                if (str.equals("full_name")) {
                    obj = 1;
                    break;
                }
                break;
            case -769510831:
                if (str.equals("email_address")) {
                    obj = 12;
                    break;
                }
                break;
            case 3053931:
                if (str.equals("city")) {
                    obj = 3;
                    break;
                }
                break;
            case 94446051:
                if (str.equals("ccCvv")) {
                    obj = 8;
                    break;
                }
                break;
            case 752552905:
                if (str.equals("ccNumber")) {
                    obj = 7;
                    break;
                }
                break;
            case 957831062:
                if (str.equals("country")) {
                    obj = 6;
                    break;
                }
                break;
            case 1583783057:
                if (str.equals("ccExpirationMonth")) {
                    obj = 9;
                    break;
                }
                break;
            case 1614589677:
                if (str.equals("subdivision")) {
                    obj = 4;
                    break;
                }
                break;
            case 1615086568:
                if (str.equals("display_name")) {
                    obj = null;
                    break;
                }
                break;
            case 2011152728:
                if (str.equals("postalCode")) {
                    obj = 11;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return 2131362137;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 2131362131;
            case WireMessage.WIRE_AUTH /*3*/:
                return 2131362132;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2131362138;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return 2131362139;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 2131362133;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return 2131362150;
            case ControlMessage.CONTROL_BAN /*8*/:
                return 2131362141;
            case mx.TwitterEditText_messageSize /*9*/:
                return 2131362147;
            case mx.TwitterEditText_messageStyle /*10*/:
                return 2131362154;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return 2131362156;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return 2131362158;
            default:
                return 2131362160;
        }
    }

    public void c(List<ServerError> list) {
        d(b(list));
    }

    public void d(List<Integer> list) {
        List a = a((List) list);
        if (this.c instanceof Activity) {
            c.a(this.c, ((Activity) this.c).getCurrentFocus());
        }
        if (!e(a)) {
            Toast.makeText(this.c, this.c.getResources().getString(2131362130), 1).show();
        }
    }

    private boolean e(List<Integer> list) {
        StringBuilder stringBuilder = new StringBuilder();
        String format = String.format("%n", new Object[0]);
        boolean z = true;
        for (Integer num : list) {
            boolean z2;
            CharSequence string = this.c.getResources().getString(num.intValue());
            if (aj.b(string)) {
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(format);
                }
                stringBuilder.append(string);
            }
            if (!z || this.b.contains(num)) {
                z2 = z;
            } else {
                z2 = false;
            }
            z = z2;
        }
        if (stringBuilder.length() == 0) {
            return false;
        }
        if (z) {
            Toast.makeText(this.c, stringBuilder.toString(), 1).show();
            return true;
        }
        try {
            new Builder(this.c).setMessage(stringBuilder.toString()).setCancelable(true).setPositiveButton(2131363218, new e(this)).create().show();
            return true;
        } catch (BadTokenException e) {
            return true;
        }
    }

    public void a(Context context, Bundle bundle) {
        int i = 0;
        if (bundle != null) {
            List parcelableArrayList = bundle.getParcelableArrayList("commerce_bundle_errors");
            if (parcelableArrayList != null) {
                c(parcelableArrayList);
                i = 1;
            }
        }
        if (i == 0) {
            Toast.makeText(context, context.getResources().getString(2131362251), 1).show();
        }
    }
}
