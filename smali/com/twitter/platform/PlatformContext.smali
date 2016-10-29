.class public abstract Lcom/twitter/platform/PlatformContext;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Laty;
.end annotation


# static fields
.field private static a:Lcom/twitter/platform/PlatformContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/platform/PlatformContext;)V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/twitter/platform/PlatformContext;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 21
    sput-object p0, Lcom/twitter/platform/PlatformContext;->a:Lcom/twitter/platform/PlatformContext;

    .line 22
    return-void
.end method

.method public static e()Lcom/twitter/platform/PlatformContext;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/twitter/platform/PlatformContext;->a:Lcom/twitter/platform/PlatformContext;

    if-nez v0, :cond_1

    .line 27
    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lddi;->a()Lddi;

    move-result-object v0

    const-class v1, Lcom/twitter/platform/PlatformContext;

    invoke-virtual {v0, v1}, Lddi;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/platform/PlatformContext;

    .line 29
    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A default context has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    sget-object v0, Lcom/twitter/platform/PlatformContext;->a:Lcom/twitter/platform/PlatformContext;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/twitter/platform/u;
.end method

.method public abstract b()Lcom/twitter/platform/r;
.end method

.method public abstract c()Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/platform/q;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/twitter/platform/p;
.end method
