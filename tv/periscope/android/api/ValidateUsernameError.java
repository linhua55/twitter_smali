package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class ValidateUsernameError {
    @op(a = "errors")
    public ArrayList<UsernameError> errors;

    /* compiled from: Twttr */
    public class UsernameError {
        public static final int ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED = 7;
        public static final String USERNAME_ERROR_FIELD = "username";
        @op(a = "code")
        public int code;
        @op(a = "error")
        public String error;
        @op(a = "fields")
        public ArrayList<String> fields;
    }
}
