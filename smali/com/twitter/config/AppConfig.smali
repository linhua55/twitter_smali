.class public abstract Lcom/twitter/config/AppConfig;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Laty;
.end annotation


# static fields
.field private static a:Lcom/twitter/config/AppConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/config/AppConfig;)V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/twitter/config/AppConfig;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 39
    sput-object p0, Lcom/twitter/config/AppConfig;->a:Lcom/twitter/config/AppConfig;

    .line 40
    return-void
.end method

.method public static m()Lcom/twitter/config/AppConfig;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/twitter/config/AppConfig;->a:Lcom/twitter/config/AppConfig;

    if-nez v0, :cond_1

    .line 22
    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lddi;->a()Lddi;

    move-result-object v0

    const-class v1, Lcom/twitter/config/AppConfig;

    invoke-virtual {v0, v1}, Lddi;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/AppConfig;

    .line 24
    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No AppConfig instance has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    sget-object v0, Lcom/twitter/config/AppConfig;->a:Lcom/twitter/config/AppConfig;

    goto :goto_0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/twitter/config/AppConfig;->a:Lcom/twitter/config/AppConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()I
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/twitter/config/AppConfig;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/config/AppConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
