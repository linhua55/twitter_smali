.class public Lcom/twitter/android/client/s;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/client/q;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/twitter/android/client/q;


# direct methods
.method public static a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/twitter/android/client/s;->c:Lcom/twitter/android/client/q;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/twitter/android/client/s;->c:Lcom/twitter/android/client/q;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Ljava/lang/String;)Lcom/twitter/android/client/q;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/android/client/q;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/twitter/android/client/s;->c:Lcom/twitter/android/client/q;

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/twitter/android/client/s;->c:Lcom/twitter/android/client/q;

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    sget-object v0, Lcom/twitter/android/client/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/q;

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/twitter/android/client/q;

    invoke-direct {v0}, Lcom/twitter/android/client/q;-><init>()V

    .line 48
    sget-object v1, Lcom/twitter/android/client/s;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    sput-object p0, Lcom/twitter/android/client/s;->a:Landroid/content/Context;

    .line 21
    invoke-static {p0}, Lcom/twitter/android/client/q;->a(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/s;->b:Ljava/util/HashMap;

    .line 23
    return-void
.end method
