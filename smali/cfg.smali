.class public Lcfg;
.super Lcbm;
.source "Twttr"


# static fields
.field private static a:Lcfg;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcbm;-><init>()V

    return-void
.end method

.method public static b()Lcfg;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcfg;->a:Lcfg;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcfg;

    invoke-direct {v0}, Lcfg;-><init>()V

    sput-object v0, Lcfg;->a:Lcfg;

    .line 26
    :cond_0
    sget-object v0, Lcfg;->a:Lcfg;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcfg;->b:Z

    return v0
.end method

.method protected f()V
    .locals 4

    .prologue
    .line 31
    const-string/jumbo v0, "sticky_search_android_5009"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "moments_trends_guide"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcfg;->b:Z

    .line 33
    return-void
.end method
