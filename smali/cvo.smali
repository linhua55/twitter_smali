.class public abstract Lcvo;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    const-string/jumbo v0, "test.report"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcvo;->a:Z

    .line 14
    const-string/jumbo v0, "org.junit.runners.ParentRunner"

    invoke-static {v0}, Lcvo;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcvo;->b:Z

    .line 15
    const-string/jumbo v0, "com.zutubi.android.junitreport.espresso.MultiDexTestRunner"

    .line 16
    invoke-static {v0}, Lcvo;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcvo;->c:Z

    .line 17
    sget-boolean v0, Lcvo;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcvo;->c:Z

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcvo;->d:Z

    return-void

    :cond_0
    move v0, v2

    .line 12
    goto :goto_0

    :cond_1
    move v1, v2

    .line 17
    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcvo;->b:Z

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcvo;->d:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcvo;->c:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcvo;->a:Z

    return v0
.end method
