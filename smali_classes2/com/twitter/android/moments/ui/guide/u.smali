.class Lcom/twitter/android/moments/ui/guide/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/z;
.implements Lcom/twitter/app/common/inject/s;


# instance fields
.field private final a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

.field private final b:Lcom/twitter/android/moments/ui/guide/ba;

.field private final c:Lcom/twitter/android/moments/ui/guide/x;

.field private final d:Lahn;

.field private final e:Lcom/twitter/android/av/t;

.field private final f:Lcom/twitter/android/moments/ui/guide/f;

.field private final g:F

.field private h:Lcom/twitter/android/moments/viewmodels/MomentModule;

.field private i:Lcom/twitter/android/moments/ui/guide/v;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/twitter/media/ui/image/AspectRatioFrameLayout;Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/android/moments/ui/guide/x;Lahn;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/ui/guide/f;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/u;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 36
    iput-object p5, p0, Lcom/twitter/android/moments/ui/guide/u;->d:Lahn;

    .line 37
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/u;->b:Lcom/twitter/android/moments/ui/guide/ba;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/u;->c:Lcom/twitter/android/moments/ui/guide/x;

    .line 39
    iput-object p6, p0, Lcom/twitter/android/moments/ui/guide/u;->e:Lcom/twitter/android/av/t;

    .line 40
    iput-object p7, p0, Lcom/twitter/android/moments/ui/guide/u;->f:Lcom/twitter/android/moments/ui/guide/f;

    .line 41
    const v0, 0x7f11000b

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/moments/ui/guide/u;->g:F

    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iget v1, p0, Lcom/twitter/android/moments/ui/guide/u;->g:F

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/guide/v;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 60
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->e:Lcom/twitter/android/av/t;

    invoke-virtual {v0}, Lcom/twitter/android/av/t;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/twitter/android/moments/viewmodels/ap;

    .line 69
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/v;->a()V

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->b:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/viewmodels/ap;)V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->b:Lcom/twitter/android/moments/ui/guide/ba;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    .line 83
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->f:Lcom/twitter/android/moments/ui/guide/f;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/guide/f;->aY_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->d:Lahn;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lahn;->d(J)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->b:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    if-ne v0, v1, :cond_3

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/v;->a()V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->c:Lcom/twitter/android/moments/ui/guide/x;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/guide/x;->b(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->c:Lcom/twitter/android/moments/ui/guide/x;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->i:Lcom/twitter/android/moments/ui/guide/v;

    goto :goto_1
.end method

.method public as_()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/u;->b()V

    .line 118
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->b:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a()V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->c:Lcom/twitter/android/moments/ui/guide/x;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/x;->a()V

    .line 106
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/u;->d:Lahn;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/u;->h:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lahn;->d(J)V

    .line 113
    :cond_0
    return-void
.end method
