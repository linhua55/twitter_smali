.class public abstract Lcom/twitter/android/moments/viewmodels/ag;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        "B:",
        "Lcom/twitter/android/moments/viewmodels/ag;",
        ">",
        "Lcom/twitter/util/object/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/model/moments/ad;

.field private b:Lcrc;

.field private c:Lcom/twitter/model/moments/DisplayStyle;

.field private d:Ljava/lang/String;

.field private e:Lcom/twitter/model/core/Tweet;

.field private f:Lcom/twitter/model/moments/ap;

.field private g:Lcqc;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/ad;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->a:Lcom/twitter/model/moments/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/viewmodels/ag;)Lcrc;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->b:Lcrc;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/DisplayStyle;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->c:Lcom/twitter/model/moments/DisplayStyle;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/viewmodels/ag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->e:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/ap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->f:Lcom/twitter/model/moments/ap;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/moments/viewmodels/ag;)Lcqc;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ag;->g:Lcqc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->e:Lcom/twitter/model/core/Tweet;

    .line 122
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/DisplayStyle;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/DisplayStyle;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->c:Lcom/twitter/model/moments/DisplayStyle;

    .line 110
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ad;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ad;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->a:Lcom/twitter/model/moments/ad;

    .line 98
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ap;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ap;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->f:Lcom/twitter/model/moments/ap;

    .line 128
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public a(Lcqc;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqc;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->g:Lcqc;

    .line 134
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public a(Lcrc;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcrc;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->b:Lcrc;

    .line 104
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/ag;->d:Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/ag;

    return-object v0
.end method
