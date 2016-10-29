.class public abstract Lcom/twitter/android/moments/viewmodels/MomentModule;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/moments/ad;

.field private final b:Lcrc;

.field private final c:Lcom/twitter/model/moments/DisplayStyle;

.field protected final d:Lcom/twitter/model/core/Tweet;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/twitter/model/moments/ap;

.field private final g:Lcqc;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/moments/viewmodels/ag;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->a(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->a:Lcom/twitter/model/moments/ad;

    .line 34
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->b(Lcom/twitter/android/moments/viewmodels/ag;)Lcrc;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->b:Lcrc;

    .line 35
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->c(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/DisplayStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->c:Lcom/twitter/model/moments/DisplayStyle;

    .line 36
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->d(Lcom/twitter/android/moments/viewmodels/ag;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->e:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->e(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->d:Lcom/twitter/model/core/Tweet;

    .line 38
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->f(Lcom/twitter/android/moments/viewmodels/ag;)Lcom/twitter/model/moments/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->f:Lcom/twitter/model/moments/ap;

    .line 39
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/ag;->g(Lcom/twitter/android/moments/viewmodels/ag;)Lcqc;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->g:Lcqc;

    .line 40
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;
.end method

.method public b()Lcom/twitter/model/moments/ad;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->a:Lcom/twitter/model/moments/ad;

    return-object v0
.end method

.method public d()Lcrc;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->b:Lcrc;

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/DisplayStyle;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->c:Lcom/twitter/model/moments/DisplayStyle;

    return-object v0
.end method

.method public f()Lcqc;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->g:Lcqc;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->a:Lcom/twitter/model/moments/ad;

    iget-object v1, v1, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->d:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public i()Lcom/twitter/model/moments/ap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/MomentModule;->f:Lcom/twitter/model/moments/ap;

    return-object v0
.end method
