.class public Lxx;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/cz;",
        "Lxy;",
        "Lxx;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Lcom/twitter/android/dm/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method

.method static synthetic a(Lxx;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lxx;->c:Z

    return v0
.end method

.method static synthetic b(Lxx;)Lcom/twitter/android/dm/z;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lxx;->d:Lcom/twitter/android/dm/z;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/dm/z;)Lxx;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lxx;->d:Lcom/twitter/android/dm/z;

    .line 119
    return-object p0
.end method

.method public a(Z)Lxx;
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lxx;->c:Z

    .line 125
    return-object p0
.end method

.method protected b()Lxv;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lxv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxv;-><init>(Lxx;Lxw;)V

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lwz;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxx;->d:Lcom/twitter/android/dm/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lxx;->b()Lxv;

    move-result-object v0

    return-object v0
.end method
