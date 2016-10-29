.class public Lcom/twitter/android/moments/ui/fullscreen/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/moments/core/ui/widget/capsule/b;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/m;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/dm;

.field private final e:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private h:Lcom/twitter/android/moments/ui/fullscreen/ag;

.field private i:I

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/ui/fullscreen/ab;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/m;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->e:Lcom/twitter/util/x;

    .line 43
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->f:Lcom/twitter/util/x;

    .line 54
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    .line 55
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 56
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->d:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 57
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->g:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 59
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ac;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/ac;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ab;)V

    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/m;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ac;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v2, v1}, Lcom/twitter/model/moments/viewmodels/ac;->a(Lcom/twitter/util/y;)V

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p4}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/ad;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ab;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->i:I

    return v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 166
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/m;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/ac;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/ab;->d(Lcom/twitter/model/moments/viewmodels/ac;)V

    .line 176
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->d(Lcom/twitter/model/moments/viewmodels/ac;)V

    goto :goto_1
.end method

.method private a(IF)V
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v5, 0x3f0ccccd    # 0.55f

    const v4, 0x3ee66666    # 0.45f

    .line 183
    add-int/lit8 v1, p1, 0x1

    .line 185
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    .line 186
    invoke-virtual {v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    .line 187
    invoke-virtual {v3, v1}, Lcom/twitter/android/moments/ui/fullscreen/m;->a(I)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(I)V

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v1

    .line 204
    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/j;->a(F)F

    move-result v0

    .line 203
    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(F)V

    .line 206
    :cond_0
    return-void

    .line 190
    :cond_1
    cmpg-float v2, p2, v4

    if-gez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(I)V

    .line 192
    div-float v1, p2, v4

    sub-float/2addr v0, v1

    goto :goto_0

    .line 193
    :cond_2
    cmpl-float v0, p2, v5

    if-lez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(I)V

    .line 195
    sub-float v0, p2, v5

    div-float/2addr v0, v4

    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/ab;->d(Lcom/twitter/model/moments/viewmodels/ac;)V

    .line 199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ab;IF)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(IF)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/ab;)F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->j:F

    return v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 179
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->c:Lcom/twitter/android/moments/ui/fullscreen/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/m;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/android/moments/ui/fullscreen/ag;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    return-object v0
.end method

.method private c(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/android/moments/ui/video/b;
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/ac;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 116
    sget-boolean v1, Lcom/twitter/android/moments/ui/fullscreen/ab;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->d:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 118
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/dm;->b(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->g:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 121
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ae;

    invoke-direct {v1, p0, v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ae;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/video/b;Lcom/twitter/model/moments/viewmodels/ac;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/video/b;->a(Lcom/twitter/library/av/s;)V

    .line 142
    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/util/x;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->e:Lcom/twitter/util/x;

    return-object v0
.end method

.method private d(Lcom/twitter/model/moments/viewmodels/ac;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->a:Lcom/twitter/model/moments/viewmodels/ac;

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->e()V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->d:Lcom/twitter/android/moments/ui/fullscreen/dm;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Lcom/twitter/android/moments/ui/video/b;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    .line 157
    :cond_3
    if-eqz p1, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->c(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->c()V

    .line 160
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ag;

    invoke-direct {v1, p1, v0}, Lcom/twitter/android/moments/ui/fullscreen/ag;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/moments/ui/video/b;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/util/x;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->f:Lcom/twitter/util/x;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/model/av/Audio;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->a:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    .line 93
    instance-of v1, v1, Lcom/twitter/model/av/Audio;

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/Audio;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/util/y;Lcom/twitter/util/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/ah;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    .line 216
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v2, v2, Lcom/twitter/android/moments/ui/fullscreen/ag;->a:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ah;-><init>(Lcom/twitter/model/av/AVMedia;Lcom/twitter/model/moments/viewmodels/ac;)V

    .line 215
    invoke-interface {p1, v0}, Lcom/twitter/util/y;->a(Ljava/lang/Object;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->e:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 220
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->f:Lcom/twitter/util/x;

    invoke-virtual {v0, p2}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 221
    return-void
.end method

.method public b(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/ac;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/android/av/audio/AudioCardError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->a:Lcom/twitter/model/moments/viewmodels/ac;

    if-ne v0, p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->h:Lcom/twitter/android/moments/ui/fullscreen/ag;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    .line 105
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->O()Lcom/twitter/model/av/AVMediaPlaylist;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/twitter/model/av/AVMediaPlaylist;->f()Lcom/twitter/model/av/c;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/av/audio/AudioCardError;->a(Lcom/twitter/model/av/c;)Lcom/twitter/android/av/audio/AudioCardError;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/twitter/util/y;Lcom/twitter/util/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ah;",
            ">;",
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/af;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->e:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 226
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->f:Lcom/twitter/util/x;

    invoke-virtual {v0, p2}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 227
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v0}, Lcom/twitter/moments/core/ui/widget/capsule/b;->a()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->i:I

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->j:F

    .line 245
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->i:I

    iget v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->j:F

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(IF)V

    .line 247
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 231
    iput p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->i:I

    .line 232
    iput p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ab;->j:F

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(IF)V

    .line 234
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
