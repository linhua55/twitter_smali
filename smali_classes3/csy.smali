.class public final Lcsy;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcsw;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcsy;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcsy;->a:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcsy;->e()Lcsw;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcsw;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcsw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcsw;-><init>(Lcsy;Lcsx;)V

    return-object v0
.end method
