.class public abstract Lcom/twitter/model/moments/viewmodels/l;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        "B:",
        "Lcom/twitter/model/moments/viewmodels/l",
        "<TT;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/twitter/model/moments/ad;

.field c:Lcom/twitter/model/moments/ak;

.field d:Lcom/twitter/model/moments/MomentPageDisplayMode;

.field e:Lcom/twitter/model/moments/z;

.field f:Lcom/twitter/model/moments/ah;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 113
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 118
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 113
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 121
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->b:Lcom/twitter/model/moments/ad;

    .line 122
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->c:Lcom/twitter/model/moments/ak;

    .line 123
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->h()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 124
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->p()Lcom/twitter/model/moments/z;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->e:Lcom/twitter/model/moments/z;

    .line 125
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->q()Lcom/twitter/model/moments/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->f:Lcom/twitter/model/moments/ah;

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/MomentPageDisplayMode;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 143
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/l;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ad;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/l;->b:Lcom/twitter/model/moments/ad;

    .line 131
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/l;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ah;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/l;->f:Lcom/twitter/model/moments/ah;

    .line 155
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/l;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ak;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/l;->c:Lcom/twitter/model/moments/ak;

    .line 137
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/l;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/z;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/l;->e:Lcom/twitter/model/moments/z;

    .line 149
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/l;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/l;->c:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
