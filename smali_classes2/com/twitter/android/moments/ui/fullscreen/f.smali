.class public Lcom/twitter/android/moments/ui/fullscreen/f;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "Twttr"


# instance fields
.field private final a:Lajl;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/m;

.field private final c:Lcom/twitter/moments/core/ui/widget/capsule/b;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final f:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/android/moments/ui/fullscreen/gg;

.field private j:Lcom/twitter/model/moments/viewmodels/ac;

.field private k:Lcom/twitter/model/av/Audio;

.field private l:I


# direct methods
.method public constructor <init>(Lajl;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/m;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/gg;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 25
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/g;-><init>(Lcom/twitter/android/moments/ui/fullscreen/f;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->f:Lcom/twitter/util/y;

    .line 32
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/h;-><init>(Lcom/twitter/android/moments/ui/fullscreen/f;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->g:Lcom/twitter/util/y;

    .line 39
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/i;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/i;-><init>(Lcom/twitter/android/moments/ui/fullscreen/f;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->h:Lcom/twitter/util/y;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->l:I

    .line 58
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    .line 59
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->e:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 60
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    .line 61
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 62
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->d:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->d:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->f:Lcom/twitter/util/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->g:Lcom/twitter/util/y;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 64
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->i:Lcom/twitter/android/moments/ui/fullscreen/gg;

    .line 65
    invoke-virtual {p2}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->h:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/f;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/f;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    if-eqz v0, :cond_1

    move v4, v1

    .line 112
    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->d:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    .line 113
    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 114
    :goto_1
    iget v3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->l:I

    if-nez v3, :cond_3

    move v3, v1

    .line 115
    :goto_2
    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v6}, Lcom/twitter/moments/core/ui/widget/capsule/b;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 116
    :goto_3
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->e:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v2

    .line 117
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 118
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->d:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/model/av/Audio;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->k:Lcom/twitter/model/av/Audio;

    invoke-static {v1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v1}, Lajl;->e()V

    .line 121
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->i:Lcom/twitter/android/moments/ui/fullscreen/gg;

    invoke-interface {v1}, Lcom/twitter/android/moments/ui/fullscreen/gg;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->k:Lcom/twitter/model/av/Audio;

    .line 123
    invoke-static {v0}, Lcom/twitter/android/av/audio/l;->a(Lcom/twitter/model/av/Audio;)Lcom/twitter/android/av/audio/l;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v2}, Lajl;->k()V

    .line 125
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v3}, Lcom/twitter/model/moments/viewmodels/ac;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lajl;->a(Lcom/twitter/android/av/audio/l;Lcom/twitter/model/core/Tweet;)V

    .line 126
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v1}, Lajl;->a()V

    .line 133
    :cond_0
    :goto_4
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v1}, Lcom/twitter/moments/core/ui/widget/capsule/b;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 134
    invoke-interface {v1}, Lcom/twitter/moments/core/ui/widget/capsule/b;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->c()V

    .line 150
    :goto_5
    return-void

    :cond_1
    move v4, v2

    .line 111
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 113
    goto :goto_1

    :cond_3
    move v3, v2

    .line 114
    goto :goto_2

    :cond_4
    move v1, v2

    .line 115
    goto :goto_3

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v1}, Lajl;->l()V

    .line 129
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v1}, Lajl;->b()V

    goto :goto_4

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->d()V

    goto :goto_5

    .line 139
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 140
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->e()V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/ac;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 142
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-static {v0}, Lcom/twitter/android/av/audio/l;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/audio/l;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lajl;->a(Lcom/twitter/android/av/audio/l;Lcom/twitter/model/core/Tweet;)V

    .line 143
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->a()V

    goto :goto_5

    .line 145
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->k:Lcom/twitter/model/av/Audio;

    .line 146
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->e()V

    .line 147
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->b()V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->a:Lajl;

    invoke-virtual {v0}, Lajl;->l()V

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->e:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->h:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 154
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->d:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->f:Lcom/twitter/util/y;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->g:Lcom/twitter/util/y;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(Lcom/twitter/util/y;Lcom/twitter/util/y;)V

    .line 155
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 103
    iput p1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->l:I

    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v1}, Lcom/twitter/moments/core/ui/widget/capsule/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    .line 106
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/f;->b()V

    .line 108
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v2

    .line 86
    add-int/lit8 v0, p1, 0x1

    .line 87
    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v3}, Lcom/twitter/android/moments/ui/fullscreen/m;->a()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v3, v0}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    .line 90
    :goto_1
    if-eq v2, v0, :cond_2

    .line 91
    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    .line 92
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/f;->b()V

    goto :goto_0

    .line 93
    :cond_2
    if-eqz v2, :cond_0

    .line 96
    iput-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    .line 97
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/f;->b()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->l:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->b:Lcom/twitter/android/moments/ui/fullscreen/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->c:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v1}, Lcom/twitter/moments/core/ui/widget/capsule/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/f;->j:Lcom/twitter/model/moments/viewmodels/ac;

    .line 73
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/f;->b()V

    .line 75
    :cond_0
    return-void
.end method
