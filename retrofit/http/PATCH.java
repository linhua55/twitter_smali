package retrofit.http;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@RestMethod(hasBody = true, value = "PATCH")
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
/* compiled from: Twttr */
public @interface PATCH {
    String value();
}
