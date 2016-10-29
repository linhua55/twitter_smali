.class Lcom/twitter/android/moments/ui/guide/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/az;
.implements Lcom/twitter/android/moments/ui/guide/z;


# instance fields
.field private final a:Lcom/twitter/android/moments/data/h;

.field private final b:Lcom/twitter/android/moments/ui/guide/s;

.field private final c:Lcom/twitter/android/moments/data/q;

.field private final d:Lcom/twitter/android/moments/data/ap;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lamb;

.field private final g:Lcom/twitter/android/moments/ui/guide/i;

.field private final h:Lcom/twitter/android/moments/ui/guide/f;

.field private final i:Lahl;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/android/moments/data/bg;

.field private final l:Lcom/twitter/android/moments/ui/guide/q;

.field private m:Lcom/twitter/android/moments/viewmodels/MomentModule;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/twitter/android/moments/data/h;Lcom/twitter/android/moments/data/bg;Lcom/twitter/android/moments/data/ap;Lcom/twitter/android/moments/ui/guide/s;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/ui/guide/f;Lamb;Laho;Lcom/twitter/android/moments/ui/guide/q;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/twitter/android/moments/data/h;",
            "Lcom/twitter/android/moments/data/bg;",
            "Lcom/twitter/android/moments/data/ap;",
            "Lcom/twitter/android/moments/ui/guide/s;",
            "Lcom/twitter/android/moments/data/q;",
            "Lcom/twitter/android/moments/data/q;",
            "Lcom/twitter/android/moments/ui/guide/f;",
            "Lamb;",
            "Laho;",
            "Lcom/twitter/android/moments/ui/guide/q;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/aw;->e:Landroid/content/res/Resources;

    .line 56
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    .line 57
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/aw;->a:Lcom/twitter/android/moments/data/h;

    .line 58
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/aw;->k:Lcom/twitter/android/moments/data/bg;

    .line 59
    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/aw;->d:Lcom/twitter/android/moments/data/ap;

    .line 60
    iput-object p5, p0, Lcom/twitter/android/moments/ui/guide/aw;->b:Lcom/twitter/android/moments/ui/guide/s;

    .line 61
    iput-object p6, p0, Lcom/twitter/android/moments/ui/guide/aw;->c:Lcom/twitter/android/moments/data/q;

    .line 62
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->i:Lahl;

    .line 63
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->j:Ljava/util/Set;

    .line 64
    iput-object p8, p0, Lcom/twitter/android/moments/ui/guide/aw;->h:Lcom/twitter/android/moments/ui/guide/f;

    .line 65
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->f()Lcom/twitter/android/moments/ui/a;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/twitter/android/moments/ui/guide/i;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/aw;->c:Lcom/twitter/android/moments/data/q;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/twitter/android/moments/ui/guide/az;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/moments/ui/guide/aw;->k:Lcom/twitter/android/moments/data/bg;

    aput-object v6, v4, v5

    .line 67
    invoke-static {p0, v4}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v1, v3, p7, v4}, Lcom/twitter/android/moments/ui/guide/i;-><init>(Lcom/twitter/android/moments/ui/a;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/twitter/android/moments/ui/guide/aw;->g:Lcom/twitter/android/moments/ui/guide/i;

    .line 68
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->l:Lcom/twitter/android/moments/ui/guide/q;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/aw;)Lcom/twitter/android/moments/ui/guide/s;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->b:Lcom/twitter/android/moments/ui/guide/s;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/guide/aw;)Lamb;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/guide/aw;)Lcom/twitter/android/moments/ui/guide/q;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->l:Lcom/twitter/android/moments/ui/guide/q;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v0}, Lamb;->e()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 4

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/aw;->m:Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 79
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->e()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/twitter/android/moments/data/x;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;Lcom/twitter/media/ui/image/MediaImageView;)V

    .line 81
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    iget-object v2, v0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lamb;->a(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->c()Lamc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lamc;->a(Lcom/twitter/model/moments/ad;)V

    .line 83
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->a:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/model/moments/ad;)V

    .line 84
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->a:Lcom/twitter/android/moments/data/h;

    new-instance v2, Lcom/twitter/android/moments/ui/guide/ax;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/guide/ax;-><init>(Lcom/twitter/android/moments/ui/guide/aw;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/android/moments/data/k;)V

    .line 91
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->b:Lcom/twitter/android/moments/ui/guide/s;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/aw;->a:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v2}, Lcom/twitter/android/moments/data/h;->b()Lcom/twitter/ui/widget/ToggleTwitterButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/guide/s;->a(Landroid/view/View;)V

    .line 93
    invoke-virtual {v0}, Lcom/twitter/model/moments/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->b()Lcom/twitter/ui/widget/BadgeView;

    move-result-object v1

    const v2, 0x7f020292

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/h;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/ui/widget/BadgeView;IZ)V

    .line 96
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->h()V

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->d()Lcrc;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/aw;->k:Lcom/twitter/android/moments/data/bg;

    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/data/bg;->a(Lcrc;)V

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->d:Lcom/twitter/android/moments/data/ap;

    invoke-virtual {v1, p1}, Lcom/twitter/android/moments/data/ap;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 116
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->g:Lcom/twitter/android/moments/ui/guide/i;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/ui/guide/i;->a(J)V

    .line 118
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->h:Lcom/twitter/android/moments/ui/guide/f;

    invoke-interface {v1}, Lcom/twitter/android/moments/ui/guide/f;->aY_()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->j:Ljava/util/Set;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->i:Lahl;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v1, v2, v3}, Lahl;->d(J)V

    .line 120
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->j:Ljava/util/Set;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ay;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/guide/ay;-><init>(Lcom/twitter/android/moments/ui/guide/aw;Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    invoke-virtual {v0, v1}, Lamb;->a(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v1}, Lamb;->g()V

    .line 99
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/aw;->e:Landroid/content/res/Resources;

    .line 100
    invoke-static {v2, p1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;Lcom/twitter/android/moments/viewmodels/MomentModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamb;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->k:Lcom/twitter/android/moments/data/bg;

    invoke-virtual {v1}, Lcom/twitter/android/moments/data/bg;->a()V

    goto :goto_1
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->f:Lamb;

    invoke-virtual {v0}, Lamb;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->m:Lcom/twitter/android/moments/viewmodels/MomentModule;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->i:Lahl;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->m:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lahl;->d(J)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aw;->j:Ljava/util/Set;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/aw;->m:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method
