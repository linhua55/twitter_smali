.class public abstract Lbis;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbit;


# static fields
.field private static a:Lbis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbis;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object p0, Lbis;->a:Lbis;

    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Lbis;->o()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/config/AppConfig;->a(Lcom/twitter/config/AppConfig;)V

    .line 26
    invoke-virtual {p0}, Lbis;->l()Lddi;

    move-result-object v0

    invoke-static {v0}, Lddi;->a(Lddi;)Lddi;

    .line 27
    invoke-virtual {p0}, Lbis;->m()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/platform/PlatformContext;->a(Lcom/twitter/platform/PlatformContext;)V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {v0}, Lcom/twitter/config/AppConfig;->a(Lcom/twitter/config/AppConfig;)V

    .line 30
    invoke-static {v0}, Lddi;->a(Lddi;)Lddi;

    .line 31
    invoke-static {v0}, Lcom/twitter/platform/PlatformContext;->a(Lcom/twitter/platform/PlatformContext;)V

    goto :goto_0
.end method

.method public static s()Lbis;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbis;->a:Lbis;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    return-object v0
.end method

.method public static t()Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lbis;->a:Lbis;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
