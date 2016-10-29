.class public final Lcnf;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcnd;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcnf;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcnf;->a:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public a(Z)Lcnf;
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcnf;->b:Z

    .line 58
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcnf;->e()Lcnd;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcnd;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcnd;

    invoke-direct {v0, p0}, Lcnd;-><init>(Lcnf;)V

    return-object v0
.end method
