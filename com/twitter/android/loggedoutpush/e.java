package com.twitter.android.loggedoutpush;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.twitter.android.mx;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class e implements d {
    private final SharedPreferences a;

    public e(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public String a() {
        return this.a.getString("loggedout_reg_id", null);
    }

    public long b() {
        return this.a.getLong("token_last_update_timestamp", 0);
    }

    public boolean c() {
        return this.a.getBoolean("reg_id_at_lo_push_destination", false);
    }

    public long d() {
        return this.a.getLong("push_dest_last_update_timestamp", 0);
    }

    public String e() {
        return this.a.getString("app_install_logged_state", null);
    }

    public void a(String str, Object obj) {
        Editor edit = this.a.edit();
        Object obj2 = -1;
        switch (str.hashCode()) {
            case -1946211502:
                if (str.equals("reg_id_at_lo_push_destination")) {
                    obj2 = 3;
                    break;
                }
                break;
            case -1603236381:
                if (str.equals("token_last_update_timestamp")) {
                    obj2 = 1;
                    break;
                }
                break;
            case -297340409:
                if (str.equals("last_update_traffic_data ")) {
                    obj2 = 5;
                    break;
                }
                break;
            case -280306922:
                if (str.equals("app_install_logged_state")) {
                    obj2 = 4;
                    break;
                }
                break;
            case 488760849:
                if (str.equals("push_dest_last_update_timestamp")) {
                    obj2 = 2;
                    break;
                }
                break;
            case 1407948217:
                if (str.equals("loggedout_reg_id")) {
                    obj2 = null;
                    break;
                }
                break;
        }
        switch (obj2) {
            case mx.View_android_theme /*0*/:
                edit.putString("loggedout_reg_id", (String) obj);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                edit.putLong("token_last_update_timestamp", ((Long) obj).longValue());
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                edit.putLong("push_dest_last_update_timestamp", ((Long) obj).longValue());
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                edit.putBoolean("reg_id_at_lo_push_destination", ((Boolean) obj).booleanValue());
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                edit.putString("app_install_logged_state", (String) obj);
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                edit.putLong("last_update_traffic_data ", ((Long) obj).longValue());
                break;
        }
        edit.apply();
    }

    public void f() {
        this.a.edit().remove("loggedout_reg_id").remove("token_last_update_timestamp").remove("push_dest_last_update_timestamp").remove("reg_id_at_lo_push_destination").remove("app_install_logged_state").remove("last_update_traffic_data ").apply();
    }

    public void g() {
        this.a.edit().remove("push_dest_last_update_timestamp").putBoolean("reg_id_at_lo_push_destination", false).putString("app_install_logged_state", "was_user").apply();
    }
}
