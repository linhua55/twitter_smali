.class public abstract Lcom/twitter/app/common/app/a;
.super Lbis;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/app/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lbis;-><init>()V

    return-void
.end method

.method public static a()Lcom/twitter/app/common/app/a;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lbis;->s()Lbis;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/twitter/app/common/app/a;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/app/a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/twitter/app/common/app/internal/ao;)Lcom/twitter/app/common/app/o;
.end method

.method public abstract a(Lcom/twitter/app/common/app/InjectedApplication;)V
.end method
