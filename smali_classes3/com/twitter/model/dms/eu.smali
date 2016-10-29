.class public Lcom/twitter/model/dms/eu;
.super Lcom/twitter/model/dms/cs;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/cs",
        "<",
        "Lcom/twitter/model/dms/es;",
        "Lcom/twitter/model/dms/eu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/model/dms/cs;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/eu;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/twitter/model/dms/eu;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lcom/twitter/model/dms/eu;
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/twitter/model/dms/eu;->a:Z

    .line 35
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/twitter/model/dms/eu;->e()Lcom/twitter/model/dms/es;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/es;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/dms/es;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/es;-><init>(Lcom/twitter/model/dms/eu;Lcom/twitter/model/dms/et;)V

    return-object v0
.end method
