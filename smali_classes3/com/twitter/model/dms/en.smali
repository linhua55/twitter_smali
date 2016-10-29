.class public Lcom/twitter/model/dms/en;
.super Lcom/twitter/model/dms/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/h",
        "<",
        "Lcom/twitter/model/dms/el;",
        "Lcom/twitter/model/dms/en;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/model/dms/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/en;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/twitter/model/dms/en;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lcom/twitter/model/dms/en;
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/twitter/model/dms/en;->a:Z

    .line 39
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/model/dms/en;->e()Lcom/twitter/model/dms/el;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/el;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/model/dms/el;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/el;-><init>(Lcom/twitter/model/dms/en;Lcom/twitter/model/dms/em;)V

    return-object v0
.end method
