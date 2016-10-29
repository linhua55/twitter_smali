.class public Lcom/twitter/android/moments/viewmodels/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/viewmodels/u;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Lcom/twitter/model/moments/MomentPageType;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/twitter/util/math/Size;

.field private final i:Lcom/twitter/model/moments/g;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/ay;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-wide v0, v0, Lcqt;->j:J

    iput-wide v0, p0, Lcom/twitter/android/moments/viewmodels/al;->a:J

    .line 29
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    iput-wide v0, p0, Lcom/twitter/android/moments/viewmodels/al;->b:J

    .line 30
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-object v0, v0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->c:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-object v0, v0, Lcqt;->c:Lcom/twitter/model/moments/MomentPageType;

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->d:Lcom/twitter/model/moments/MomentPageType;

    .line 32
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-object v0, v0, Lcqt;->g:Lcqn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-object v0, v0, Lcqt;->g:Lcqn;

    iget-object v0, v0, Lcqn;->d:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->e:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-object v0, v0, Lcom/twitter/model/moments/ad;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->f:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-object v0, v0, Lcom/twitter/model/moments/ad;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->g:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-object v0, v0, Lcqt;->g:Lcqn;

    iget-object v0, v0, Lcqn;->c:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->h:Lcom/twitter/util/math/Size;

    .line 37
    iget-object v0, p1, Lcom/twitter/model/moments/ay;->c:Lcqt;

    iget-object v0, v0, Lcqt;->e:Lcom/twitter/model/moments/k;

    iget-object v0, v0, Lcom/twitter/model/moments/k;->c:Lcom/twitter/model/moments/g;

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->i:Lcom/twitter/model/moments/g;

    .line 38
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/twitter/android/moments/viewmodels/al;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/twitter/android/moments/viewmodels/al;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->h:Lcom/twitter/util/math/Size;

    return-object v0
.end method

.method public g()Lcom/twitter/model/moments/g;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->i:Lcom/twitter/model/moments/g;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/al;->d:Lcom/twitter/model/moments/MomentPageType;

    invoke-virtual {v0}, Lcom/twitter/model/moments/MomentPageType;->a()Z

    move-result v0

    return v0
.end method
