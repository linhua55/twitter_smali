package android.support.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@Retention(RetentionPolicy.CLASS)
/* compiled from: Twttr */
public @interface RequiresPermission {

    @Target({ElementType.FIELD})
    /* compiled from: Twttr */
    public @interface Read {
        RequiresPermission value();
    }

    @Target({ElementType.FIELD})
    /* compiled from: Twttr */
    public @interface Write {
        RequiresPermission value();
    }

    String[] allOf() default {};

    String[] anyOf() default {};

    boolean conditional() default false;

    String value() default "";
}
