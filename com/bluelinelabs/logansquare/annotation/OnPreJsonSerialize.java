package com.bluelinelabs.logansquare.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({ElementType.METHOD})
/* compiled from: Twttr */
public @interface OnPreJsonSerialize {
}
